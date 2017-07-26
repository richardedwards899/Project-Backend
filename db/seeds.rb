# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Report.delete_all
Input.delete_all

percy = User.create( {
  email: 'Percy@example.com',
  password: "password-percy",
  password_confirmation: "password-percy"
  })

hubert = User.create( {
  email: 'Hubert@example.com',
  password: 'password-hubert',
  password_confirmation: 'password-hubert'
  })

lawrence = User.create( {
  email: 'Lawrence@example.com',
  password: 'password-lawrence',
  password_confirmation: 'password-lawrence'
  })

report1 = Report.create({
  year: 2015,
  user: percy
  })

report2 = Report.create({
  year: 2016,
  user: percy
  })
#
report3 = Report.create({
  year: 2017,
  user: percy
  })

Input.create({
  name: "Q1 - To what extent did you manage and control the activities of the subcontractor?",
  position: 25,
  report: report1
  })

Input.create({
  name: "Q2 - When technical issues were encountered on the project, to what extent were you involved in resolving them?",
  position: 50,
  report: report1
  })

Input.create({
  name: "Q1 - To what extent did you manage and control the activities of the subcontractor?",
  position: 0,
  report: report2
  })

Input.create({
  name: "Q2 - When technical issues were encountered on the project, to what extent were you involved in resolving them?",
  position: 50,
  report: report2
  })

Input.create({
  name: "Q1 - To what extent did you manage and control the activities of the subcontractor?",
  position: 100,
  report: report3
  })

Input.create({
  name: "Q2 - When technical issues were encountered on the project, to what extent were you involved in resolving them?",
  position: 75,
  report: report3
  })
