# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
# Location.destroy_all



user1 = User.create(first_name: "Sharif", last_name:"Zubi", username: "sharifzubi", email: "sharif@sharif.com", favourite_location: "Chelsea", password: "password", about_me: "", admin: true, confirmed_at: DateTime.now)
user1 = User.create(first_name: "David", last_name:"Luiz", username: "davidluiz4", email: "luiz@luiz.com", favourite_location: "Chelsea", password: "password", about_me: "", admin: false, confirmed_at: DateTime.now)
user1 = User.create(first_name: "John", last_name:"Terry", username: "jt26", email: "jt@jt.com", favourite_location: "Chelsea", password: "password", about_me: "", admin: false, confirmed_at: DateTime.now)


# l1 = Location.create(name: "Chelsea", longitude: , latitude: )
# l2 = Location.create(name: "Hammersmith", longitude: , latitude: )
# l3 = Location.create(name: "Shoreditch", longitude: , latitude: )
# l4 = Location.create(name: "Hoxton", longitude: , latitude: )
# l5 = Location.create(name: "Old Street", longitude: , latitude: )
# l6 = Location.create(name: "", longitude: , latitude: )
# l7 = Location.create(name: "", longitude: , latitude: )
# l8 = Location.create(name: "", longitude: , latitude: )
# l9 = Location.create(name: "", longitude: , latitude: )
# l10 = Location.create(name: "", longitude: , latitude: )
