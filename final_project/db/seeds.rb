# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Location.destroy_all


# Users
user1 = User.create(first_name: "Sharif", last_name:"Zubi", username: "sharifzubi", email: "sharif@sharif.com", favourite_location: "Chelsea", password: "password", about_me: "", admin: true, confirmed_at: DateTime.now)
user2 = User.create(first_name: "David", last_name:"Luiz", username: "davidluiz4", email: "luiz@luiz.com", favourite_location: "Chelsea", password: "password", about_me: "", admin: false, confirmed_at: DateTime.now)
user3 = User.create(first_name: "John", last_name:"Terry", username: "jt26", email: "jt@jt.com", favourite_location: "Chelsea", password: "password", about_me: "", admin: false, confirmed_at: DateTime.now)

Photos
photo1 = Photo.create(title: "MaxD badman MC", image: "/images/photography/maxd_westway.jpg")
photo2 = Photo.create(title: "Girls, Girls, Girls", image: "/images/photography/girls_neon.jpg")
photo3 = Photo.create(title: "Piccadilly Circus", image: "/images/photography/piccadilly_circus.jpg")
photo4 = Photo.create(title: "London Town", image: "/images/photography/london_town.jpg")
photo5 = Photo.create(title: "Long Exposure", image: "/images/photography/long_exposure.jpg")
photo6 = Photo.create(title: "Stamford Bridge", image: "/images/photography/stamford_bridge_gopro.jpg")
photo7 = Photo.create(title: "Footiebawww", image: "/images/photography/westway_foot.jpg")

user1.photos << photo5
user1.photos << photo4
user1.photos << photo3
user2.photos << photo7
user3.photos << photo6
user3.photos << photo2

# # Carrierwave Photos
# pi = PhotoImage.create!(:photo => photo)
# pi.image.store!(File.open(File.join(Rails.root, 'test.jpg')))
# photo.photo_images << pi
# photo.save!

# Memories
memory1 = Memory.create(text: "Westwaaay")
memory2 = Memory.create(text: "The Dream")
memory3 = Memory.create(text: "All of the lights")
memory4 = Memory.create(text: "Greatest city on earth? Guilty!")
memory5 = Memory.create(text: "Woooooh")
memory6 = Memory.create(text: "The home of Chelsea Football Club")
memory7 = Memory.create(text: "Westwaaay bruvvv")

photo1.memories << memory1
photo2.memories << memory2
photo3.memories << memory3
photo4.memories << memory4
photo5.memories << memory5
photo6.memories << memory6
photo7.memories << memory7

# Locations
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
