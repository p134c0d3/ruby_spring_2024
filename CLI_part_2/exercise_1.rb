# Create people array

people = [
  {first_name: "John", last_name: "Pierce", age: 30}, 
  {first_name: "Tiffany", last_name: "Pierce", age: 29}, 
  {first_name: "Isaiah", last_name: "Pierce", age: 1}
]

puts people.each { |person| puts "Hi #{person[:first_name]} #{person[:last_name]}! You are #{person[:age]} year(s) old today."}
