require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
burnaby = Store.new do |loc|
  loc.mens_apparel = true
  loc.womens_apparel = true
  loc.annual_revenue = 300000
  loc.name = "Burnaby"
end
burnaby.save

richmond = Store.new do |loc|
  loc.mens_apparel = false
  loc.womens_apparel = true
  loc.annual_revenue = 1260000
  loc.name = "Richmond"
end
richmond.save

gastown = Store.new do |loc|
  loc.mens_apparel = true
  loc.womens_apparel = false
  loc.annual_revenue = 190000
  loc.name = "Gastown"
end
gastown.save

puts Store.count
puts `clear`
