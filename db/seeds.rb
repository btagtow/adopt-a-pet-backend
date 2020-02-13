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

sh1 = Shelter.create(name: "Denver Animal Shelter", city: "Denver", address: "1241 W. Bayaud Ave.", link: "https://www.denvergov.org/content/dam/denvergov/Portals/682/images/Logos/DenverAnimalShelter_DenverAnimalProtection_Logo.png")
sh2 = Shelter.create(name: "Dumb Friends League", city: "Denver", address: "2080 S. Quebec St.", link:"https://www.ddfl.org/", image: "https://i.pinimg.com/originals/78/8d/b7/788db7a41d69d30be3578c80cd1822e5.gif")
sh3 = Shelter.create(name: "Aurora Animal Shelter", city: "Aurora", address:"15750 E 32nd Aves", link:"https://www.auroragov.org/residents/animal_services/aurora_animal_shelter", image: "https://p1cdn4static.civiclive.com/UserFiles/Servers/Server_1881137/Image/Dog%20and%20Cat%20Aurora%20Animal%20Shelter.jpg")
sh4 = Shelter.create(name: "Humane Society Pikes Peak Region", city: "Colorado Springs", address:"610 Abbot Lane", link:"https://www.hsppr.org/", image: "https://www.hsppr.org/sites/default/files/images/news/HSPPRLogo_googleplus_v2.jpg")

an1 = Animal.create(name: "Jar Jar Binks", age: 1, gender: "Male", kind: "dog", breed: "Husky/Labrador", shelter: sh1, temperament: "Timid, High Energy", picture: "https://petharbor.com/get_image.asp?RES=Detail&ID=A347113&LOCATION=DNVR")
an2 = Animal.create(name: "Bonita", age: 3, gender: "Female", kind: "dog", breed: "Labrador mix", shelter: sh2, temperament: "Sweet/Energetic", picture: "https://petharbor.com/get_image.asp?RES=Detail&ID=A346906&LOCATION=DNVR")
an3 = Animal.create(name: "Brook", age: 3, gender: "Female", kind: "Dog", breed: "Rottweiler and Pit Bull Terrier", shelter: sh3, temperament: "Active, Obedient", picture: "http://petharbor.com/get_image.asp?RES=Detail&ID=A207788&LOCATION=AURO")
an4 = Animal.create(name: "Jenny", age: 5, gender: "Female", kind: "Dog", breed: "Jack Russell Terrior", shelter: sh3, temperament: "Yippy", picture: "http://petharbor.com/get_image.asp?RES=Detail&ID=A208318&LOCATION=AURO")
an5 = Animal.create(name: "Molly", age: 3, gender: "Female", kind: "Dog", breed: "Beagle Mix", shelter: sh4, temperament: "Docile", picture: "https://www.hsppr.org/sites/default/files/images/petharbor/A1455488.jpg")
an6 = Animal.create(name: "Charlie", age: 4, gender: "Unknown", kind: "Turtle", breed: "Turtle", shelter: sh4, temperament: "Slow", picture: "https://www.hsppr.org/sites/default/files/images/petharbor/A1461497.jpg")
an7 = Animal.create(name: "Deedee", age: 9, gender: "Female", kind: "Cat", breed: "Domestic Shorthair", shelter: sh2, temperament: "Serious", picture: "http://petharbor.com/get_image.asp?RES=Detail&ID=A0580743&LOCATION=DDFL1")

UserAnimal.create(user: usr1, animal: an1)
UserAnimal.create(user: usr1, animal: an2)
UserAnimal.create(user: usr1, animal: an5)
UserAnimal.create(user: usr2, animal: an5)
UserAnimal.create(user: usr2, animal: an7)
