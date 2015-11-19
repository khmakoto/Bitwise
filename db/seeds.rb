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

Publication.create({
  title: 'First Article',
  publication_type: 'Article',
  intro: 'Makoto master race',
  content: 'bla bla',
  section: 'Gaming',
  user_id: 1
})

Publication.create({
  title: 'First Review',
  publication_type: 'review',
  intro: 'Makoto master race2',
  content: 'bla bla',
  section: '-',
  summary: 'In conclusion',
  grade: 5.9,
  user_id: 1
})

puts "Seeding complete"

