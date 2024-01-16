my_hash = {
  "this is a key" => "this is a value", 
  :name => "John", 
  'array' => [1, 2, 3], 
  'nested hash' => {}
}

# my_hash = Hash.new

# Accessing values in hashes

shoes = {
  'summer' => 'sandal', 
  'winter' => 'boots'
}

# puts shoes['hiking']
# puts shoes.fetch('hiking', 'hiking boots')

# puts shoes['summer'] = 'flip-flops'
# puts shoes
# shoes.delete('summer')
# puts shoes

books = {
  'Harry Potter' => 'JK Rowling',
  'Tom Sawyer' => 'Mark Twain'
}

# puts books.keys
# puts books.values

hash1 = {
  'a' => 100,
  'b' => 200
}
hash2 = {
  'c' => 300,
  'd' => 400
}

# puts hash1.merge(hash2)


# SYMBOLS AS HASH KEYS

american_cars = {
  :chevy => 'Corvette',
  :ford => 'Mustang',
  :dodge => 'Challenger'
}

# The below is the standard way of writing hashes with symbols as keys
japanese_cars = {
  honda: 'Accord',
  toyota: 'Tacoma', 
  nissan: 'Altima'
}

puts american_cars[:ford]
puts japanese_cars[:toyota]
