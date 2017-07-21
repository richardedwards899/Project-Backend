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
  name: 'Percy'
  })

hubert = User.create( {
  name: 'Hubert'
  })

lawrence = User.create( {
  name: 'Lawrence'
  })

Report.create({
  year: 2015,
  user: percy
  })

Report.create({
  year: 2016,
  user: percy
  })

Report.create({
  year: 2017,
  user: percy
  })
