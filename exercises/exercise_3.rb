require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts 'Exercise 3'
puts '----------'

# Your code goes here ...
@store3 = Store.find_by_id(3)
puts "Store count before destroy: #{Store.count}"
@store3.destroy
puts "Store count after destroy: #{Store.count}"
