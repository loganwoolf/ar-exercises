require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.new do |loc|
  loc.mens_apparel = false
  loc.womens_apparel = true
  loc.annual_revenue = 224000
  loc.name = "Surrey"
end
surrey.save

whistler = Store.new do |loc|
  loc.mens_apparel = true
  loc.womens_apparel = false
  loc.annual_revenue = 1900000
  loc.name = "Whistler"
end
whistler.save

yaletown = Store.new do |loc|
  loc.mens_apparel = true
  loc.womens_apparel = true
  loc.annual_revenue = 430000
  loc.name = "Yaletown"
end
yaletown.save

@mens_stores = Store.where(
  mens_apparel: true
)
@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < 1000000')

@mens_stores.each{|store| puts "#{store.name}: #{store.annual_revenue}"}
@womens_stores.each{|store| puts "#{store.name}: #{store.annual_revenue}"}
puts `clear`