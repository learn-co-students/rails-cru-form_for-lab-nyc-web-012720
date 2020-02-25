# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
puts 'Making Artists'
Genre.destroy_all
puts 'Making Genres'
Song.destroy_all
puts 'Making Songs'

5.times do
Artist.create(name: Faker::Music.band, bio: Faker::Music.album )
end

5.times do
Genre.create(name: Faker::Music.genre)
end

5.times do
Song.create(name: Faker::Music::Phish.song)
end