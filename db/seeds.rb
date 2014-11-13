# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Group.create(type: 'O+')
Group.create(type: 'O-')
Group.create(type: 'A+')
Group.create(type: 'A-')
Group.create(type: 'B+')
Group.create(type: 'B-')
Group.create(type: 'AB+')
Group.create(type: 'AB-')