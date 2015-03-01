# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
    {email: 'lars@walen.me'},
    {email: 'jimmy@example.com'}
  ])

lars = users.first

tasks = Task.create([
    {user: lars, name: 'Take a walk'},
    {user: lars, name: 'Wake up on time'},
    {user: lars, name: 'Stretch before bed'}
  ])

completions = Completion.create([
    {task: tasks.first}
  ])
