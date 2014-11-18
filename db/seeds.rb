# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Group.create(blood_type: 'O+')
Group.create(blood_type: 'O-')
Group.create(blood_type: 'A+')
Group.create(blood_type: 'A-')
Group.create(blood_type: 'B+')
Group.create(blood_type: 'B-')
Group.create(blood_type: 'AB+')
Group.create(blood_type: 'AB-')

AvailableStock.create(:blood_type => "A+", :units => "350 ml", :price => "110$")
AvailableStock.create(:blood_type => "A-", :units => "700 ml", :price => "220$")
AvailableStock.create(:blood_type => "B+", :units => "350 ml", :price => "130$")
AvailableStock.create(:blood_type => "B-", :units => "700 ml", :price => "240$")
AvailableStock.create(:blood_type => "O+", :units => "350 ml", :price => "220$")
AvailableStock.create(:blood_type => "O-", :units => "350 ml", :price => "240$")
AvailableStock.create(:blood_type => "AB+", :units => "350 ml", :price => "110$")
AvailableStock.create(:blood_type => "AB-", :units => "350 ml", :price => "110$")