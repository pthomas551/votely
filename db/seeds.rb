20.times do
  Activity.create(name: Faker::Hipster.sentence(3), description: Faker::Hipster.sentence, date: Faker::Date.forward, time: Faker::Time.forward, user_id: rand(1..20))
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
