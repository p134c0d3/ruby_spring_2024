hash = {
  "person_1" => {
    "first_name" => "Alice",
    "last_name" => "Smith",
    "age" => 30
  },
  "person_2" => {
    "first_name" => "Bob",
    "last_name" => "Johnson",
    "age" => 25
  },
  "person_3" => {
    "first_name" => "Charlie",
    "last_name" => "Brown",
    "age" => 35
  }
}

puts hash.each { |person| puts "Hi #{person["first_name"]} #{person["last_name"]}! You are #{person["age"]} year(s) old today."}
