require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...
@store1 = Store.find_by_id(1)
@store2 = Store.find_by_id(2)
@store4 = Store.find_by_id(4)
@store5 = Store.find_by_id(5)
@store6 = Store.find_by_id(6)
@store1.employees.create(first_name: 'Amy', last_name: 'A', hourly_rate: 60)
@store1.employees.create(first_name: 'Bob', last_name: 'B', hourly_rate: 30)
@store2.employees.create(first_name: 'Chris', last_name: 'C', hourly_rate: 40)
@store2.employees.create(first_name: 'Dave', last_name: 'D', hourly_rate: 50)
@store4.employees.create(first_name: 'Eric', last_name: 'E', hourly_rate: 60)
@store4.employees.create(first_name: 'Fin', last_name: 'F', hourly_rate: 30)
@store5.employees.create(first_name: 'Gina', last_name: 'G', hourly_rate: 40)
@store5.employees.create(first_name: 'Helen', last_name: 'H', hourly_rate: 50)
@store6.employees.create(first_name: 'Issac', last_name: 'I', hourly_rate: 60)
@store6.employees.create(first_name: 'John', last_name: 'H', hourly_rate: 40)
