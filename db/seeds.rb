# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.create(name: "Jay-Z", bio: "Beyonce's husband")
a2 = Artist.create(name: "Beyonce", bio: "Jay-Z's wife")

g1 = Genre.create(name: "Rap")
g2 = Genre.create(name: "Pop")

s1 = Song.create(name: "Hardknock Life", artist_id: 1, genre_id: 1)
s2 = Song.create(name: "Make this song cry", artist_id: 1, genre_id: 2)
s3 = Song.create(name: "All the single ladies", artist_id: 2, genre_id: 1)
s4 = Song.create(name: "Put a ring on it", artist_id: 2, genre_id: 2)