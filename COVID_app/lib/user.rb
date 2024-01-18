require 'bcrypt'
require 'json'

class User
  attr_accessor :username, :password

  @@users = []

  def initialize(username, password, existing_hash = false)
    @username = username
    @password = existing_hash ? BCrypt::Password.new(password) : BCrypt::Password.create(password)
    # add user to external file
    @@users << self
  end

  def self.all
    @@users
  end

  # authenticate user to login
  def self.authenticate(username, password)
    user = User.find_by_username(username)

    return user if user && user.password == password

    nil
  end

  def self.find_by_username(username)
    user = all.find do |user|
      user.username == username
    end
  end

  def self.store_credentials(user)
    # Step 1: Create a file if one doesn't arleady exist
    file_path = 'users.json'
    File.open(file_path, 'w') { |f| f.write(JSON.pretty_generate([])) } unless File.exist?(file_path)
    # Step 2: Add user to the file
    file = File.read(file_path)
    users_data = JSON.parse(file)

    users_data << { username: user.username, password: user.password }

    File.open(file_path, 'w') { |f| f.write(JSON.generate(users_data)) }
  end

  def self.load_users_from_file
    file_path = 'users.json'

    return unless File.exist?(file_path)

    # STEP 1: PARSE DATA FROM FILE
    file = File.read(file_path)

    users_data = JSON.parse(file)
    # STEP 2: ITERATE AND CREATE USER INSTANCES FROM ARRAY OF HASHES
    users_data.each do |user_data|
      User.new(user_data['username'], user_data['password'], true)
    end
  end
end
