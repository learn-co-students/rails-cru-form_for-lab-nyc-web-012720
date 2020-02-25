# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
    Artist.create(name: Faker::Music.band, bio: Faker::Quote.yoda)
end

20.times do
    Genre.create(name: Faker::Music.genre)
end

20.times do 
    Song.create(artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id, name: Faker::Music::Phish.song)
end 



