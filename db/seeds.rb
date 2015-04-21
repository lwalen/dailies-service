# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  users = User.create([
      {email: 'lars@walen.me'},
      {email: 'jimmy@example.com'}
    ])

  lars = users.first

  tasks = Task.create([
      {user: lars, name: 'Take a walk', created_at: 1.week.ago },
      {user: lars, name: 'Wake up on time', created_at: 10.days.ago},
      {user: lars, name: 'Stretch before bed', created_at: 4.days.ago}
    ])

  tasks.each do |task|
    (task.created_at.to_date..Date.today).each do |date|
      completed_at = [nil, date].sample
      Completion.create(
        {task: task, available_on: date, completed_at: completed_at}
      )
    end
  end
end
