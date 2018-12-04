require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts 'Exercise 4'
puts '----------'

# Your code goes here ...
store = Store.create(name: 'Surrey', mens_apparel: false, womens_apparel: true, annual_revenue: 224_000)
store = Store.create(name: 'Whistler', mens_apparel: true, womens_apparel: false, annual_revenue: 1_900_000)
store = Store.create(name: 'Yaletown', mens_apparel: true, womens_apparel: true, annual_revenue: 430_000)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts store[:name]
end

@womens_low_revenue_stores = Store.where('annual_revenue < 1000000').where(womens_apparel: true)

@womens_low_revenue_stores.each do |store|
  puts store[:name]
end
