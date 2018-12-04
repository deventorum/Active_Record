require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 7'
puts '----------'

# Your code goes here ...
@store1.employees.create(first_name: nil, last_name: Faker::Name.last_name, hourly_rate: rand(40..200))
@store1.employees.create(first_name: Faker::Name.first_name, last_name: nil, hourly_rate: rand(40..200))
@store1.employees.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, hourly_rate: rand(300..500))
@store1.employees.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, hourly_rate: rand(1..10))
Store.create(name: 'No', mens_apparel: true, womens_apparel: true, annual_revenue: 300_000)
Store.create(name: 'Not a very profitable store', mens_apparel: true, womens_apparel: true, annual_revenue: -100_000)
