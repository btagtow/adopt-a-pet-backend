# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# t.string "name"
# t.integer "age"
# t.string "gender"
# t.string "kind"
# t.string "breed"
# t.integer "shelter_id", null: false
# t.string "temperament"
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false
# t.string "picture"
# t.index ["shelter_id"], name: "index_animals_on_shelter_id"
User.destroy_all
Animal.destroy_all
Shelter.destroy_all
UserAnimal.destroy_all

usr1 = User.create(name:"Evan", email: "evan@gmail.com")
usr2 = User.create(name: "Ben", email: "ben@gmail.com")

sh1 = Shelter.create(name: "Denver Animal Shelter", city: "Denver", address: "1241 W. Bayaud Ave.", link: "https://www.ddfl.org/adoption/pet-adoption-process/?gclid=CjwKCAiAhJTyBRAvEiwAln2qBzRC-cjJPlzXOnqsghOsdF18U4X15Xg9VjOfPtzy_rIqB2ePuAdlgxoC7JoQAvD_BwE", image: "https://www.denvergov.org/content/dam/denvergov/Portals/682/images/Logos/DenverAnimalShelter_DenverAnimalProtection_Logo.png")
sh2 = Shelter.create(name: "Dumb Friends League", city: "Denver", address: "2080 S. Quebec St.", link:"https://www.ddfl.org/", image: "https://i.pinimg.com/originals/78/8d/b7/788db7a41d69d30be3578c80cd1822e5.gif")
sh3 = Shelter.create(name: "Aurora Animal Shelter", city: "Aurora", address:"15750 E 32nd Aves", link:"https://www.auroragov.org/residents/animal_services/aurora_animal_shelter", image: "https://p1cdn4static.civiclive.com/UserFiles/Servers/Server_1881137/Image/Dog%20and%20Cat%20Aurora%20Animal%20Shelter.jpg")
sh4 = Shelter.create(name: "Humane Society Pikes Peak Region", city: "Colorado Springs", address:"610 Abbot Lane", link:"https://www.hsppr.org/", image: "https://www.hsppr.org/sites/default/files/images/news/HSPPRLogo_googleplus_v2.jpg")

an1 = Animal.create(name: "Jar Jar Binks", age: 1, gender: "Male", kind: "dog", breed: "Husky/Labrador", shelter: sh1, temperament: "Timid, High Energy", picture: "https://petharbor.com/get_image.asp?RES=Detail&ID=A347113&LOCATION=DNVR", status: "available")
an2 = Animal.create(name: "Bonita", age: 3, gender: "Female", kind: "dog", breed: "Labrador mix", shelter: sh2, temperament: "Sweet/Energetic", picture: "https://petharbor.com/get_image.asp?RES=Detail&ID=A346906&LOCATION=DNVR", status: "available")
an3 = Animal.create(name: "Brook", age: 3, gender: "Female", kind: "Dog", breed: "Rottweiler and Pit Bull Terrier", shelter: sh3, temperament: "Active, Obedient", picture: "http://petharbor.com/get_image.asp?RES=Detail&ID=A207788&LOCATION=AURO", status: "available")
an4 = Animal.create(name: "Jenny", age: 5, gender: "Female", kind: "Dog", breed: "Jack Russell Terrior", shelter: sh3, temperament: "Yippy", picture: "http://petharbor.com/get_image.asp?RES=Detail&ID=A208318&LOCATION=AURO", status: "available")
an5 = Animal.create(name: "Molly", age: 3, gender: "Female", kind: "Dog", breed: "Beagle Mix", shelter: sh4, temperament: "Docile", picture: "https://www.hsppr.org/sites/default/files/images/petharbor/A1455488.jpg", status: "available")
an6 = Animal.create(name: "Charlie", age: 4, gender: "Unknown", kind: "Turtle", breed: "Turtle", shelter: sh4, temperament: "Slow", picture: "https://www.hsppr.org/sites/default/files/images/petharbor/A1461497.jpg", status: "available")
an7 = Animal.create(name: "Monkey", age: 2, gender: "Female", kind: "Cat", breed: "Domestic Medium hair", shelter: sh1, temperament: "Sweet", picture: "https://petharbor.com/get_image.asp?RES=Detail&ID=A344555&LOCATION=DNVR", status: "available")
an8 = Animal.create(name: "Tango", age: 3, gender: "Male", kind: "Cat", breed: "Domestic Shorthair", shelter: sh1, temperament: "Scrappy", picture: "https://petharbor.com/get_image.asp?RES=Detail&ID=A345197&LOCATION=DNVR", status: "available")
an9 = Animal.create(name: "Tansy", age: 1, gender: "Male", kind: "Cat", breed: "Domestic Shorthair", shelter: sh1, temperament: "Docile", picture: "https://petharbor.com/get_image.asp?RES=Detail&ID=A345209&LOCATION=DNVR", status: "available")
an10 = Animal.create(name: "Carly", age: 8, gender: "Female", kind: "Cat", breed: "Domestic Shorthair", shelter: sh2, temperament: "Timid", picture: "http://www.petharbor.com/get_image.asp?RES=thumb&ID=A0601865&LOCATION=DDFL", status: "available")
an11 = Animal.create(name: "Dustin", age: 7, gender: "Male", kind: "Cat", breed: "Domestic Shorthair", shelter: sh2, temperament: "Affectionate", picture: "http://www.petharbor.com/get_image.asp?RES=thumb&ID=A0658581&LOCATION=DDFL", status: "available")
an12 = Animal.create(name: "Oreo", age: 1, gender: "Male", kind: "Cat", breed: "Domestic Shorthair", shelter: sh3, temperament: "Alert", picture: "http://petharbor.com/get_image.asp?RES=Detail&ID=A208313&LOCATION=AURO", status: "available")
an13 = Animal.create(name: "Herman", age: 4, gender: "Male", kind: "Cat", breed: "Domestic Shorthair", shelter: sh4, temperament: "Shy", picture: "https://www.hsppr.org/sites/default/files/images/petharbor/A1459014.jpg", status: "available")

UserAnimal.create(user: usr1, animal: an1)
UserAnimal.create(user: usr1, animal: an12)
UserAnimal.create(user: usr1, animal: an5)
UserAnimal.create(user: usr2, animal: an13)
UserAnimal.create(user: usr2, animal: an7)
