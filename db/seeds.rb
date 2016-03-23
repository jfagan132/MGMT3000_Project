# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(name:  "Jacob Fagan",
             email: "jfagan@ggc.edu",
             password:              "iseekthetruth12",
             password_confirmation: "iseekthetruth12",
             admin: true)
             
99.times do |n|
  name  = "Example #{n+1}"
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

users = User.order(:created_at).take(6)
10.times do |n|
  content = "Task #{n+1}"
  priority = "Low"
  is_complete = false
  users.each { |user| user.tasks.create!(content: content, priority: priority, is_complete: is_complete) }
end

10.times do |n|
  content = "Task #{n+11}"
  priority = "Medium"
  is_complete = false
  users.each { |user| user.tasks.create!(content: content, priority: priority, is_complete: is_complete) }
end

10.times do |n|
  content = "Task #{n+21}"
  priority = "High"
  is_complete = false
  users.each { |user| user.tasks.create!(content: content, priority: priority, is_complete: is_complete) }
end