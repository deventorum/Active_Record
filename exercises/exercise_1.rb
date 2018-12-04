require_relative '../setup'

puts 'Exercise 1'
puts '----------'

# Your code goes below here ...
store = Store.create(name: 'Burnaby', mens_apparel: true, womens_apparel: true, annual_revenue: 300_000)
store = Store.create(name: 'Richmond', mens_apparel: false, womens_apparel: true, annual_revenue: 1_260_000)
store = Store.create(name: 'Gastown', mens_apparel: true, womens_apparel: false, annual_revenue: 190_000)

puts Store.count
