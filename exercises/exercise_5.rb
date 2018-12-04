require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts 'Exercise 5'
puts '----------'

# Your code goes here ...
@total_revenue = Store.sum('annual_revenue')
puts "total revenue is #{@total_revenue}"
@avarage_revenue = Store.average('annual_revenue')
puts "average store revenue is #{@avarage_revenue}"

@num_of_profitable_stores = Store.where('annual_revenue > 1000000').count

puts @num_of_profitable_stores
