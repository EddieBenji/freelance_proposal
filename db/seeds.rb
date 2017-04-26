# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |proposal|
  Proposal.create!(customer: "Customer #{proposal}",
                   portfolio_url: (proposal % 2 == 0 ? 'http://portfolio.jordanhudgens.com/' : 'https://github.com/EddieBenji'),
                   tools: 'RoR, Angular and Postgresql',
                   estimated_hours: proposal*4,
                   hourly_rate: 120,
                   weeks_to_complete: proposal*2,
                   client_email: (proposal % 2 == 0 ? 'eduardo_benji@hotmail.com' : 'eduardo.942712@gmail.com'))
end
