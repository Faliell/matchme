# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"


Match.destroy_all
Chatroom.destroy_all
User.destroy_all

puts "Destroy database"

cersei = User.create(first_name: "Cersei", last_name: "Lanister", email: "cersei@gold.com", password: "123123", age: 36,
  description: "I am ruthless, willful, cold, ambitious, and cunning in the sense that I'm utterly willing to betray anyone who trusts me, or do anything to protect my own. However, I'm also arrogant and self-centered to a fault, which has proven to be one of my greatest weaknesses. ",
  interest:"Power",
  gender: "female",
  account_type: "MatchSeeker",
  geo: "Westeros")
file1 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661939122/development/S6c07GgH_400x400_jdubrx.jpg")
cersei.photo.attach(io: file1, filename: "S6c07GgH_400x400_jdubrx.jpg", content_type: "image/jg")
cersei.save

natasha = User.create(first_name: "Natasha", last_name: "Romanova", email: "natasha@viuva.com", password: "123123", age: 32, description: "I am an avenger. That's about all I can say about myself at the moment.",
interest:"Spying",
gender: "female",
account_type: "MatchSeeker",
geo: "Moscow")
file2 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940415/development/14e63434d7adeb7c87c35fb3b7f49d0d_zyfoqf.png")
natasha.photo.attach(io: file2, filename: "14e63434d7adeb7c87c35fb3b7f49d0d_zyfoqf.png", content_type: "image/jg")
natasha.save

robin = User.create(first_name: "Robin", last_name: "Scherbatsky", email: "robin@mother.com", password: "123123", age: 42, description: "I am a Scotch-drinking, cigar-smoking, gun-toting Canadian pop-star-turned-journalist-turned-morning-show-host. I am tomboyish, hardcore and sarcastic. I'm often emotionally closed off, Barney has described me as being one of the most secretive people he knew.",
interest:"Beer",
gender: "female",
account_type: "MatchSeeker",
geo: "New York")
file3 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940070/development/b3ded10c44f714d174a95668db41eeb2d99b9587_00_bghasu.jpg")
robin.photo.attach(io: file3, filename: "b3ded10c44f714d174a95668db41eeb2d99b9587_00_bghasu.jpg", content_type: "image/jg")
robin.save

galadriel = User.create(first_name: "Galadriel", last_name: "Lothlorien", email: "galadriel@ring.com", password: "123123", age: 8372,
  description: "I was the Lady of the woods of Lothlórien, which she ruled with Celeborn, my husband.",
  interest:"Magic",
  gender: "female",
  account_type: "MatchSeeker",
  geo: "Middle-Earth")
file4 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940070/development/321b4464554604b56eb4750f4f9c3df1a45ceff1_00_h1wyap.jpg")
galadriel.photo.attach(io: file4, filename: "321b4464554604b56eb4750f4f9c3df1a45ceff1_00_h1wyap.jpg", content_type: "image/jg")
galadriel.save


lara = User.create(first_name: "Lara", last_name: "Croft", email: "lara@croft.com", password: "123123", age: 29, description: "I'm an English archaeologist, treasure hunter and tomb raider. Born to an aristocratic family, I'm generally disinterested in upper class society, finding it stifling and boring. I take far more interest in delving into the secrets of the past and finding what is believed to not even exist.",
interest:"Lost thombs.",
gender: "female",
account_type: "MatchSeeker",
geo: "London")
file5 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940071/development/lara-croft-angelina-jolie_s3pq3z.jpg")
lara.photo.attach(io: file5, filename: "lara-croft-angelina-jolie_s3pq3z.jpg", content_type: "image/jg")
lara.save

katniss = User.create(first_name: "Katniss", last_name: "Everdeen", email: "katniss@hunger.com", password: "123123", age: 25, description: "I'm very strong, stubborn, and determined. Often, I will react first and ask questions later. I will do anything to survive. ",
interest:"Hunting",
gender: "female",
account_type: "MatchSeeker",
geo: "District 12")
file6 = URI.open("https://res.cloudinary.com/dwhirvd5m/image/upload/v1662370691/MatcheMe/katniss_urizqg.jpg")
katniss.photo.attach(io: file6, filename: "katniss_urizqg.jpg", content_type: "image/jg")
katniss.save

rachel = User.create(first_name: "Rachel", last_name: "Greene", email: "rachel@friends.com", password: "123123", age: 33,
description: "Funny and spirited but pretty self-involved. I'm always here for my friends.",
interest:"Coffee",
gender: "female",
account_type: "MatchSeeker",
geo: "New York")
file7 = URI.open("https://res.cloudinary.com/dwhirvd5m/image/upload/v1662377143/MatcheMe/rachel_qz4vpf.jpg")
rachel.photo.attach(io: file7, filename: "rachel_qz4vpf.jpg", content_type: "image/jg")
rachel.save

kaia = User.create(first_name: "Kaia", last_name: "Gerber", email: "kaia@model.com", password: "123123", age: 21,
description: "I'm a model and actress who loves to travel and see the world.",
interest:"Fashion and Cinema",
gender: "female",
account_type: "MatchSeeker",
geo: "Los Angeles")
file8 = URI.open("https://res.cloudinary.com/dwhirvd5m/image/upload/v1662377886/MatcheMe/kaia_gt6u2r.jpg")
kaia.photo.attach(io: file8, filename: "kaia_gt6u2r.jpg", content_type: "image/jg")
kaia.save



# kratos = User.create(first_name: "Kratos", last_name: "", email: "kratos@war.com", password: "123123", age: 200, description: "I am a semi-god", interest:"Chaos and blood", gender: "male", account_type: "MatchSeeker", geo: "Greece")
# file6 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940070/development/God_of_warPS4_zrkvbd.jpg")
# kratos.photo.attach(io: file6, filename: "God_of_warPS4_zrkvbd.jpg", content_type: "image/jg")
# kratos.save

# ken = User.create(first_name: "Ken", last_name: "Masters", email: "ken@fight.com", password: "123123", age: 36, description: "I am a street fighter", interest:"fights", gender: "male", account_type: "MatchSeeker", geo: "Japan")
# file7 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940070/development/fc684796688f8d9724bfde295ea8321f64431543r1-915-1000v2_00_mqisz7.jpg")
# ken.photo.attach(io: file7, filename: "fc684796688f8d9724bfde295ea8321f64431543r1-915-1000v2_00_mqisz7.jpg", content_type: "image/jg")
# ken.save

# rajesh = User.create(first_name: "Rajesh", last_name: "Koothrappali", email: "raj@bbt.com", password: "123123", age: 37, description: "I am a scientist", interest:"My dog", gender: "male", account_type: "MatchSeeker", geo: "California")
# file8 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940046/development/7cde0837350ccbfebb1e0b8e517e85c2_cfy29b.jpg")
# rajesh.photo.attach(io: file8, filename: "7cde0837350ccbfebb1e0b8e517e85c2_cfy29b.jpg.jpg", content_type: "image/jg")
# rajesh.save

luke = User.create(first_name: "Luke", last_name: "Skywalker", email: "luke@light.com", password: "123123", age: 53, description: "I am a Jedi", interest:"Politics and family.", gender: "male", account_type: "MatchSeeker", geo: "Tattoine")
file9 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940071/development/z-luke-skywalker-mark-hamill_yjpnq9.jpg")
luke.photo.attach(io: file9, filename: "z-luke-skywalker-mark-hamill_yjpnq9.jpg", content_type: "image/jg")
luke.save

forrest = User.create(first_name: "Forrest", last_name: "Gump", email: "forrest@run.com", password: "123123", age: 35, description: "I am Forrest Gump", interest:"Running and benches.", gender: "male", account_type: "MatchSeeker", geo: "Alabama")
file10 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940071/development/main-qimg-712d8aeb2e8ee4d33873f743edded00c-lq_aeseed.jpg")
forrest.photo.attach(io: file10, filename: "main-qimg-712d8aeb2e8ee4d33873f743edded00c-lq_aeseed.jpg", content_type: "image/jg")
forrest.save

luca = User.create(first_name: "Luca", last_name: "Fauzia", email: "luca@love.com", password: "123123", age: 33, description: "I'm a good musican and love people", interest:"pianos.and design", gender: "male", account_type: "MatchSeeker", geo: "Alabama")
file10 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1662132178/development/107921513_z3yk4e.jpg")
luca.photo.attach(io: file10, filename: "107921513_z3yk4e.jpg", content_type: "image/jpg")
luca.save

fiona = User.create(first_name: "Princess", last_name: "Fiona", email: "fiona@farfaraway.com", password: "123123", age: 40, description: "", interest:"", gender: "female", account_type: "MatchMaker", geo: "Far Far Away")
file11 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940071/development/717a75a87f8f25cd95ec6b85239c0faa_q8tfln.jpg")
fiona.photo.attach(io: file11, filename: "717a75a87f8f25cd95ec6b85239c0faa_q8tfln.jpg", content_type: "image/jg")
fiona.save

mask = User.create(first_name: "The", last_name: "Mask", email: "mask@me.com", password: "123123", age: 37, description: "", interest:"", gender: "male", account_type: "MatchMaker", geo: "New York")
file12 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940070/development/015c4e2d83975aa67e2134d44af81f18_jj5iz9.jpg")
mask.photo.attach(io: file12, filename: "015c4e2d83975aa67e2134d44af81f18_jj5iz9.jpg", content_type: "image/jg")
mask.save

brie = User.create(first_name: "Brie", last_name: "Van de Kamp", email: "brie@wine.com", password: "123123", age: 48, description: "", interest:"", gender: "female", account_type: "MatchMaker", geo: "Wisteria Lane")
file13 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940070/development/image_400x400_w8qadn.jpg")
brie.photo.attach(io: file13, filename: "image_400x400_w8qadn.jpg", content_type: "image/jg")
brie.save

puts "Create Users"

# match1 = Match.create(status: "match", male: kratos, female: cersei, match_maker: fiona )
# match2 = Match.create(status: false, male: ken, female: natasha, match_maker: mask )
# match3 = Match.create(status: false, male: ken, female: natasha, match_maker: brie )
# match4 = Match.create(status: false, male: kratos, female: lara, match_maker: brie )
# match5 = Match.create(status: false, male: forrest, female: robin, match_maker: brie )
# match6 = Match.create(status: "match", male: kratos, female: cersei, match_maker: fiona )

puts "Create Matches"
