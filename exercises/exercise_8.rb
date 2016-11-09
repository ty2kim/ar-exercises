require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts 'Exercise 8'
puts '----------'

# Your code goes here ...
new_employee = Employee.create(store_id: 1, first_name: 'Kaley', last_name: 'K', hourly_rate: 50)
puts "New Employee Password: #{new_employee.password}"
