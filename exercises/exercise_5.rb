require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts 'Exercise 5'
puts '----------'

# Your code goes here ...
puts "Sum of total revenue: #{Store.sum('annual_revenue')}"
puts "Average of revenue: #{Store.average('annual_revenue').to_i}"
puts "Number of stores that are generating $1M or more: #{Store.where('annual_revenue >= ?', 1_000_000).count}"
