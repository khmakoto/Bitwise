# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({
  username: 'Ricky',
  email: 'rik@rik.com',
  editor: true,
  password: 'password',
  password_confirmation: 'password'
})

User.create({
  username: 'User',
  email: 'use@use.com',
  password: 'password',
  password_confirmation: 'password'
})

puts "Seeding complete"

