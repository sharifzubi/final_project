# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Location.destroy_all



user1 = User.create(first_name: "Sharif", last_name:"Zubi", username: "sharifzubi", email: "sharif@sharif.com", favourite_location: "Chelsea", password: "password", about_me: "", admin: true, confirmed_at: DateTime.now)
user1 = User.create(first_name: "David", last_name:"Luiz", username: "davidluiz4", email: "luiz@luiz.com", favourite_location: "Chelsea", password: "password", about_me: "", admin: false, confirmed_at: DateTime.now)
user1 = User.create(first_name: "John", last_name:"Terry", username: "jt26", email: "jt@jt.com", favourite_location: "Chelsea", password: "password", about_me: "", admin: false, confirmed_at: DateTime.now)


l1 = Location.create(name: "Chelsea", longitude: "-0.174936", latitude: "51.485093")
l2 = Location.create(name: "Fulham", longitude: "-0.21393", latitude: "51.482561")
l3 = Location.create(name: "Hammersmith", longitude: "-0.223731", latitude: "51.491188")
l4 = Location.create(name: "Mayfair", longitude: "-0.147806", latitude: "51.511627")
l5 = Location.create(name: "Camden", longitude: "-0.142555", latitude: "51.539011")
l6 = Location.create(name: "Islington", longitude: "-0.104963", latitude: "51.538977")
# l7 = Location.create(name: "Angel", longitude: , latitude: )
# l8 = Location.create(name: "OldStreet", longitude: , latitude: )
# l9 = Location.create(name: "Shoreditch", longitude: , latitude: )
# l10 = Location.create(name: "Hoxton", longitude: , latitude: )
# l10 = Location.create(name: "BrickLane", longitude: , latitude: )
# l10 = Location.create(name: "Blackfriars", longitude: , latitude: )
# l10 = Location.create(name: "Farringdon", longitude: , latitude: )
# l10 = Location.create(name: "Dalston", longitude: , latitude: )
# l10 = Location.create(name: "Barnes", longitude: , latitude: )
