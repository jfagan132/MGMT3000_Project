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
             
User.create!(name:  "Micheal Feudi",
             email: "mfeudi@gmail.com",
             password:              "mf1142",
             password_confirmation: "mf1142",
             admin: true)
             
User.create!(name:  "Justin Stapleton",
             email: "stapleton.justin@yahoo.com",
             password:              "jstaple",
             password_confirmation: "jstaple",
             admin: true)