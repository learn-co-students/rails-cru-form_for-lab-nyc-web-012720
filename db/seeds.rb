# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Artist.destroy_all
# Genre.destroy_all
# Song.destroy_all

a1 = Artist.create(name: "Jay-Z",bio: "roc nation... i love u beyonce")
a2 = Artist.create(name: "Snakehips",bio: "performing this friday in brooklyn")

g1 = Genre.create(name: "Hip Hop")
g2 = Genre.create(name: "Electronic")

s1 = Song.create(name: "Empire State of Mind",artist_id: 1,genre_id: 1)
s2 = Song.create(name: "The Story of O.J.",artist_id: 1,genre_id: 1)
s3 = Song.create(name: "All My Friends",artist_id: 2, genre_id:2)