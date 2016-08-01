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

#Pokemon.create([{ user: users.first, catalog: catalogs.first, level: 10 }, { user: users.first, catalog: catalogs.first, level: 12 }, { user: users.first, catalog: catalogs.second, level: 5 }])