# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(
  email: 'admin@admin.com',
  password: '12345',
  password_confirmation: '12345'
)

Picture.create(
  title:  'The old church on the coast of White sea',
  artist: 'Sergey Ershov',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg',
  user_id: User.first.id
)

Picture.create(
  title:  'Sea Power',
  artist: 'Stephen Scullion',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg',
  user_id: User.first.id
)

Picture.create(
  title:  'Into the Poppies',
  artist: 'John Wilhelm',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg',
  user_id: User.first.id
)

Picture.create(
  title:  'bircage',
  artist: 'Birdcage',
  url:    'http://writingexercises.co.uk/images2/randomimage/birdcage.jpg',
  user_id: User.first.id
)

Picture.create(
  title:  'Tiger',
  artist: 'Emilio Koyoto',
  url:    'https://images.freeimages.com/images/large-previews/478/jack-o-lanterns-1326113.jpg',
  user_id: User.first.id
)

Picture.create(
  title:  'WayHigh',
  artist: 'Andrew P Cohen',
  url:    'https://images.freeimages.com/images/large-previews/478/jack-o-lanterns-1326113.jpg',
  user_id: User.first.id
)
