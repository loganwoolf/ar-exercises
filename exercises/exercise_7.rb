require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts `clear`
print "Enter a store name: > "
store_name = $stdin.gets.chomp

new_store = Store.new(
  name: store_name
)

if !new_store.valid?
  new_store.errors.full_messages.each{|msg| puts msg}
else
  new_store.save
end