# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

UserSong.destroy_all
Song.destroy_all
Genre.destroy_all
User.destroy_all

users = User.create([{ email: 'rcereced@gmail.com', name: 'Rodrigo', password: '123456' }, { email: 'rodrigo@desafiolatam.com', name: 'Rodrigo', password: '123456' }])

genres = Genre.create([{ name: 'Rock' }, { name: 'Hip-Hop' }, { name: 'Electrónica' }])

songs = Song.create([{ name: 'Shot in the dark', genre: genres[0], duration: 200 }, { name: 'The man who sold the world', genre: genres[0], duration: 200 }, { name: 'Got the life', genre: genres[0], duration: 200 }, { name: 'Insane', genre: genres[1], duration: 200 }, { name: 'Dance', genre: genres[2], duration: 200 }])

UserSong.create([{ user: users[0], song: songs[0] }, { user: users[0], song: songs[1] }, { user: users[0], song: songs[2] }, { user: users[1], song: songs[3] }, { user: users[1], song: songs[4] }])
