require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
)

@store1.employees.create(
  first_name: "Logan",
  last_name: "Woolf",
  hourly_rate: 45
)

@store1.employees.create(
  first_name: "Chris",
  last_name: "Bell",
  hourly_rate: 40
)

@store2.employees.create(
  first_name: "Douglas",
  last_name: "Wingcock",
  hourly_rate: 60
)

@store2.employees.create(
  first_name: "Roux",
  last_name: "Woolf",
  hourly_rate: 50
)

@store2.employees.create(
  first_name: "Melissa",
  last_name: "Beck",
  hourly_rate: 45
)

