# psql postgres
#
# DROP DATABASE ar_exercises;
# CREATE ROLE development PASSWORD 'development';
# CREATE DATABASE ar_exercises OWNER development;
# GRANT ALL PRIVILEGES ON DATABASE ar_exercises TO development;
# ALTER ROLE "development" WITH LOGIN;

require_relative '../setup'

puts 'Exercise 1'
puts '----------'

# Your code goes below here ...
puts "Store count before create: #{Store.count}"
Store.create(name: 'Burnaby', annual_revenue: 300_000, mens_apparel: true, womens_apparel: true)
Store.create(name: 'Richmond', annual_revenue: 1_260_000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Gastown', annual_revenue: 190_000, mens_apparel: true, womens_apparel: false)
puts "Store count after create: #{Store.count}"
