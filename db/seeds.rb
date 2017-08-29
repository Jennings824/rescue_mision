# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  Question.create(title: "#{Faker::RickAndMorty.character}", description: "#{Faker::RickAndMorty.quote}?", user_id: "#{rand(1..5)}")
end

5.times do
  Answer.create(description: "#{Faker::RickAndMorty.quote}", question_id: "#{rand(1..5)}")
end
