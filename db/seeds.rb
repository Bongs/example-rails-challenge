# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

charnum = [('a'..'z'), ('A'..'Z'), (0..9)].map { |i| i.to_a }.flatten

company1 = Company.create(name: "Company_A", zip_code: 12345)
company2 = Company.create(name: "Company_B", zip_code: 56789)

company1.charges.create([
	{amount: 50.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false},
	{amount: 60.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false},
	{amount: 70.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false},
	{amount: 80.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false},
	{amount: 90.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false}
])

company2.charges.create([
	{amount: 150.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false},
	{amount: 160.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false},
	{amount: 170.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false},
	{amount: 180.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: true},
	{amount: 190.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: false, refunded: false}
])


user1 = User.create(first_name: "Sam", last_name: "McD")
user2 = User.create(first_name: "Allen", last_name: "Sawny")
user3 = User.create(first_name: "Brett", last_name: "Wasky")
user4 = User.create(first_name: "Micky", last_name: "Bosco")
user5 = User.create(first_name: "Jack", last_name: "Pallon")

user1.charges.create([
	{amount: 10.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false},
	{amount: 20.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: true},
	{amount: 30.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: true},
	{amount: 40.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: false, refunded: true}
])

user2.charges.create([
	{amount: 15.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false},
	{amount: 16.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: false, refunded: true},
	{amount: 17.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: false, refunded: true},
	{amount: 18.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: false, refunded: true}
])

user3.charges.create([
	{amount: 25.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false}
])

user4.charges.create([
	{amount: 35.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false}
])

user5.charges.create([
	{amount: 45.00, unique_code: (0...15).map { charnum[rand(charnum.length)] }.join,
	  paid: true, refunded: false}
])