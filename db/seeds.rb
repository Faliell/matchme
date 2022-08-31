# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Match.destroy_all
User.destroy_all

puts "Destroy database"

cersei = User.create(first_name: "Cersei", last_name: "Lanister", email: "cersei@gold.com", password: "123123", age: 36, description: "I am a queen", interest:"Crowns, death avenger and brothers", gender: "female", account_type: "MatchSeeker", geo: "Westeros")
file1 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
cersei.photo.attach(io: file1, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
cersei.save

# natasha = User.create(first_name: "Natasha", last_name: "Romanova", email: "natasha@viuva.com", password: "123123", age: 32, description: "I am an avenger", interest:"Heroes", gender: "female", account_type: "MatchSeeker", geo: "Moscow")
file2 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
natasha.photo.attach(io: file2, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
natasha.save

# robin = User.create(first_name: "Robin", last_name: "Scherbatsky", email: "robin@mother.com", password: "123123", age: 42, description: "I am a journalist", interest:"Beer", gender: "female", account_type: "MatchSeeker", geo: "New York")
file3 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
robin.photo.attach(io: file3, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
robin.save


# galadriel = User.create(first_name: "Galadriel", last_name: "Lothlorien", email: "galadriel@ring.com", password: "123123", age: 8372, description: "I am an elf", interest:"Magic", gender: "female", account_type: "MatchSeeker", geo: "Middle-Hearth")
file4 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
galadriel.photo.attach(io: file4, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
galadriel.save

# lara = User.create(first_name: "Lara", last_name: "Croft", email: "lara@croft.com", password: "123123", age: 29, description: "I am an adventurer", interest:"Lost tumbs and inospit places.", gender: "female", account_type: "MatchSeeker", geo: "London")
file5 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
lara.photo.attach(io: file5, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
lara.save

# kratos = User.create(first_name: "Kratos", last_name: "", email: "kratos@war.com", password: "123123", age: 200, description: "I am a semi-god", interest:"Chaos and blood", gender: "male", account_type: "MatchSeeker", geo: "Greece")
file6 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
kratos.photo.attach(io: file6, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
kratos.save

# ken = User.create(first_name: "Ken", last_name: "Masters", email: "ken@fight.com", password: "123123", age: 36, description: "I am a street fighter", interest:"fights", gender: "male", account_type: "MatchSeeker", geo: "Japan")
file7 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
ken.photo.attach(io: file7, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
ken.save

# rajesh = User.create(first_name: "Rajesh", last_name: "Koothrappali", email: "raj@bbt.com", password: "123123", age: 37, description: "I am a scientist", interest:"My dog", gender: "male", account_type: "MatchSeeker", geo: "California")
file8 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
rajesh.photo.attach(io: file8, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
rajesh.save

# luke = User.create(first_name: "Luke", last_name: "Skywalker", email: "luke@light.com", password: "123123", age: 53, description: "I am a Jedi", interest:"Politics and family.", gender: "male", account_type: "MatchSeeker", geo: "Tattoine")
file9 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
luke.photo.attach(io: file9, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
luke.save

# forrest = User.create(first_name: "Forrest", last_name: "Gump", email: "forrest@run.com", password: "123123", age: 35, description: "I am Forrest Gump", interest:"Running and benches.", gender: "male", account_type: "MatchSeeker", geo: "Alabama")
file10 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
forrest.photo.attach(io: file10, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
forrest.save

# fiona = User.create(first_name: "Princess", last_name: "Fiona", email: "fiona@farfaraway.com", password: "123123", age: 40, description: "", interest:"", gender: "female", account_type: "MatchMaker", geo: "Far Far Away")
file11 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
fiona.photo.attach(io: file11, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
fiona.save

# mask = User.create(first_name: "The", last_name: "Mask", email: "mask@me.com", password: "123123", age: 37, description: "", interest:"", gender: "male", account_type: "MatchMaker", geo: "New York")
file12 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
mask.photo.attach(io: file12, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
mask.save

# brie = User.create(first_name: "Brie", last_name: "Van de Kamp", email: "brie@wine.com", password: "123123", age: 48, description: "", interest:"", gender: "female", account_type: "MatchMaker", geo: "Wisteria Lane")
file13 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661522230/development/6rr4tkackzx2zpnl6em9s6pkuzdj.jpg")
brie.photo.attach(io: file13, filename: "6rr4tkackzx2zpnl6em9s6pkuzdj.jpg", content_type: "image/jg")
brie.save

# puts "Create Users"

# match1 = Match.create(status: false, male: ken, female: natasha, match_maker: fiona )
# match2 = Match.create(status: false, male: ken, female: natasha, match_maker: mask )
# match3 = Match.create(status: false, male: ken, female: natasha, match_maker: brie )
# match4 = Match.create(status: false, male: kratos, female: lara, match_maker: brie )
# match5 = Match.create(status: false, male: forrest, female: robin, match_maker: brie )

# puts "Create Matches"
