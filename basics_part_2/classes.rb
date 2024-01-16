class Party 

  attr_accessor :attendee_count, :attendee_list

  def initialize
    @attendee_count = 0
    @attendee_list = []
  end

  # @@attendee_count = 0
  # @@attendee_list = []

  def add_attendee(name)
    @attendee_count += 1
    @attendee_list << name
  end

  def print_attendees
    puts "Total Attendee Count: #{@attendee_count}"
    puts "Attendee Names: "
    @attendee_list.each { |attendee| puts attendee }
  end

end

party_1 = Party.new
party_1.add_attendee("John")
party_1.add_attendee("Will")
party_1.add_attendee("German")
party_1.add_attendee("Jacob")
party_1.add_attendee("Nolan")
# party_1.print_attendees
# puts party_1.attendee_list


party_2 = Party.new
party_2.add_attendee("Zelda")
party_2.add_attendee("Tom")
party_2.add_attendee("Trevor")
party_2.print_attendees
