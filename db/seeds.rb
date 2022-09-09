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
Chatroom.destroy_all

puts "Destroy database"

amy = User.create(first_name: "Amy", last_name: "Farrah Fowler", email: "amy@bigbang.com", password: "123123", age: 42,
  description: "I'm fond of my friends, especially my BFF. I've become quite socially active as well over the last couple of years ",
  interest:"Biology  Science  Big Bang",
  gender: "female",
  account_type: "MatchSeeker",
  geo: "California")
file1 = URI.open("https://res.cloudinary.com/dwhirvd5m/image/upload/v1662470442/MatcheMe/amy_mv1nkc.jpg")
amy.photo.attach(io: file1, filename: "amy_mv1nkc.jpg", content_type: "image/jg")
amy.save

natasha = User.create(first_name: "Natasha", last_name: "Romanova", email: "natasha@viuva.com", password: "123123", age: 32, description: "I am an avenger. That's about all I can say about myself at the moment.",
interest:"Spying  URSS",
gender: "female",
account_type: "MatchSeeker",
geo: "Moscow")
file2 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940415/development/14e63434d7adeb7c87c35fb3b7f49d0d_zyfoqf.png")
natasha.photo.attach(io: file2, filename: "14e63434d7adeb7c87c35fb3b7f49d0d_zyfoqf.png", content_type: "image/jg")
natasha.save

robin = User.create(first_name: "Robin", last_name: "Scherbatsky", email: "robin@mother.com", password: "123123", age: 42, description: "I am a Scotch-drinking, cigar-smoking, gun-toting Canadian pop-star-turned-journalist-turned-morning-show-host. I am tomboyish, hardcore and sarcastic. I'm often emotionally closed off, Barney has described me as being one of the most secretive people he knew.",
interest:"Beer  Dogs",
gender: "female",
account_type: "MatchSeeker",
geo: "New York")
file3 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940070/development/b3ded10c44f714d174a95668db41eeb2d99b9587_00_bghasu.jpg")
robin.photo.attach(io: file3, filename: "b3ded10c44f714d174a95668db41eeb2d99b9587_00_bghasu.jpg", content_type: "image/jg")
robin.save

penny = User.create(first_name: "Penny", last_name: "Teller", email: "penny@bigbang.com", password: "123123", age: 36,
  description: "I'm easy-going and good-hearted. I pride myself on my social skills, vast knowledge of popular culture, and generally positive outlook. I have a bit of a temper as well, mostly brought out when I feel intimidated or put down.",
  interest:"Movies  Bear  Wine  Football",
  gender: "female",
  account_type: "MatchSeeker",
  geo: "Nebraska")
file4 = URI.open("https://res.cloudinary.com/dwhirvd5m/image/upload/v1662469976/MatcheMe/Penny_prl9ri.jpg")
penny.photo.attach(io: file4, filename: "Penny_prl9ri.jpg", content_type: "image/jg")
penny.save

monica = User.create(first_name: "Monica", last_name: "Geller", email: "monica@friends.com", password: "123123", age: 29, description: "Energetic, hyper, and obsessive-compulsive.",
interest:"Lost thombs;  Cook",
gender: "female",
account_type: "MatchSeeker",
geo: "London")
file5 = URI.open("https://res.cloudinary.com/dwhirvd5m/image/upload/v1662471356/MatcheMe/monica_maeqnq.jpg")
monica.photo.attach(io: file5, filename: "monica_maeqnq.jpg", content_type: "image/jg")
monica.save

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
interest:"Coffee  Fashion",
gender: "female",
account_type: "MatchSeeker",
geo: "New York")
file7 = URI.open("https://res.cloudinary.com/dwhirvd5m/image/upload/v1662559201/MatcheMe/greene_nbzsv8.jpg")
rachel.photo.attach(io: file7, filename: "greene_nbzsv8.jpg", content_type: "image/jg")
rachel.save

kaia = User.create(first_name: "Kaia", last_name: "Gerber", email: "kaia@model.com", password: "123123", age: 21,
description: "I'm a model and actress who loves to travel and see the world.",
interest:"Fashion  Cinema",
gender: "female",
account_type: "MatchSeeker",
geo: "Los Angeles")
file8 = URI.open("https://res.cloudinary.com/dwhirvd5m/image/upload/v1662377886/MatcheMe/kaia_gt6u2r.jpg")
kaia.photo.attach(io: file8, filename: "kaia_gt6u2r.jpg", content_type: "image/jg")
kaia.save

peggy = User.create(first_name: "Peggy", last_name: "Bundy", email: "peggy@bundy.com", password: "123123", age: 46,
description: "I have no opinions on politics, religion, science, starving people, nuclear holocaust or recycling. ",
interest:"Television  Hairspray",
gender: "female",
account_type: "MatchSeeker",
geo: "Wisconsin")
file9 = URI.open("https://res.cloudinary.com/dwhirvd5m/image/upload/v1662471932/MatcheMe/peggy_b81d8s.webp")
peggy.photo.attach(io: file9, filename: "peggy_b81d8s.webp", content_type: "image/jg")
peggy.save

tokyo = User.create(first_name: "Tokyo", last_name: "Silene", email: "tokyo@heist.com", password: "123123", age: 35,
description: "I'm hot-headed, impulsive, and rash.",
interest:"Guns  Money",
gender: "female",
account_type: "MatchSeeker",
geo: "Unknown")
file14 = URI.open("https://res.cloudinary.com/dwhirvd5m/image/upload/v1662476597/MatcheMe/Tokyo_jzcxao.webp")
tokyo.photo.attach(io: file14, filename: "Tokyo_jzcxao.webp", content_type: "image/jg")
tokyo.save

sierra = User.create(first_name: "Alicia", last_name: "Sierra", email: "sierra@moeda.com", password: "123123", age: 40,
  description: "I'm determined, detailed and if you betray me I'll find out.",
  interest:"Police books,  Guns",
  gender: "female",
  account_type: "MatchSeeker",
  geo: "Madrid")
  file15 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1662637555/development/3150014.png-r_1280_720-f_jpg-q_x-xxyxx_b1roh8.jpg")
  sierra.photo.attach(io: file15, filename: "3150014.png-r_1280_720-f_jpg-q_x-xxyxx_b1roh8.jpg", content_type: "image/jpg")
  sierra.save

miranda = User.create(first_name: "Miranda", last_name: "Priestly", email: "miranda@prada.com", password: "123123", age: 73,
  description: "I'm rich, and I run the fashion industry.",
  interest:"Prada  Channel",
  gender: "female",
  account_type: "MatchSeeker",
  geo: "New York")
  file16 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1662637986/development/nesta-quarta-feira-22-a-comedia-o-diabo-veste-prada-completa-15-anos-de-lancamento-no-brasil-1632321894367_v2_956x500_mzgxcc.jpg")
  miranda.photo.attach(io: file16, filename: "nesta-quarta-feira-22-a-comedia-o-diabo-veste-prada-completa-15-anos-de-lancamento-no-brasil-1632321894367_v2_956x500_mzgxcc.jpg", content_type: "image/jpg")
  miranda.save

gina = User.create(first_name: "Gina", last_name: "Linetti", email: "gina@police.com", password: "123123", age: 41,
  description: "Gina knows best.",
  interest:"Cops  Cofe",
  gender: "female",
  account_type: "MatchSeeker",
  geo: "New York")
  file17 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1662639099/development/brooklyn-nine-nine_inthq5.jpg")
  gina.photo.attach(io: file17, filename: "brooklyn-nine-nine_inthq5.jpg", content_type: "image/jpg")
  gina.save

rajesh = User.create(first_name: "Rajesh", last_name: "Koothrappali", email: "raj@bbt.com", password: "123123", age: 37, description: "I am a scientist", interest:"My dog", gender: "male", account_type: "MatchSeeker", geo: "California")
file8 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1661940046/development/7cde0837350ccbfebb1e0b8e517e85c2_cfy29b.jpg")
rajesh.photo.attach(io: file8, filename: "7cde0837350ccbfebb1e0b8e517e85c2_cfy29b.jpg.jpg", content_type: "image/jg")
rajesh.save

tiffany = User.create(first_name: "Tiffany", last_name: "Wilson", email: "tiffany@white.com", password: "123123", age: 33,
  description: "Gina knows best.",
  interest:"Shoes  Clothers",
  gender: "female",
  account_type: "MatchSeeker",
  geo: "California")
  file18 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1662724165/development/AsBranquelas2_400x400_iigtoe.jpg")
  tiffany.photo.attach(io: file18, filename: "AsBranquelas2_400x400_iigtoe.jpg", content_type: "image/jpg")
  tiffany.save

francisco = User.create(first_name: "Francisco", last_name: "Mendonça", email: "francisco@lewagon.com", password: "123123", age: 35, description: "I am eco and only go to work by bike.", interest:"Surf  LeWagon  Code", gender: "male", account_type: "MatchSeeker", geo: "Porto")
file19 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1662726046/development/Captura_de_ecr%C3%A3_2022-09-09_%C3%A0s_13.20.22_cuqqa5.png")
francisco.photo.attach(io: file19, filename: "Captura_de_ecr%C3%A3_2022-09-09_%C3%A0s_13.20.22_cuqqa5.png", content_type: "image/jpg")
francisco.save

luca = User.create(first_name: "Luca", last_name: "Fauzia", email: "luca@love.com", password: "123123", age: 33, description: "I'm a good musican and love people", interest:"Pianos Design", gender: "male", account_type: "MatchSeeker", geo: "Alabama")
file10 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1662132178/development/107921513_z3yk4e.jpg")
luca.photo.attach(io: file10, filename: "107921513_z3yk4e.jpg", content_type: "image/jpg")
luca.save

phoebe = User.create(first_name: "Phoebe", last_name: "Buffay", email: "phoebe@friends.com", password: "123123", age: 40,
  description: "Call me 'the weird one'.",
  interest:"Cats and Guitars",
  gender: "female",
  account_type: "MatchMaker",
  geo: "New York")
file11 = URI.open("https://res.cloudinary.com/dwhirvd5m/image/upload/v1662471469/MatcheMe/phoebe_vqkzu1.jpg")
phoebe.photo.attach(io: file11, filename: "phoebe_vqkzu1.jpg", content_type: "image/jg")
phoebe.save

fabio = User.create(first_name: "Fabio", last_name: "Schapowal", email: "fabio@me.com", password: "123123", age: 41, description: "", interest:"", gender: "male", account_type: "MatchMaker", geo: "Porto")
file12 = URI.open("https://res.cloudinary.com/faliell/image/upload/v1662560536/development/fabio_cqm3nt.jpg")
fabio.photo.attach(io: file12, filename: "fabio_cqm3nt.jpg", content_type: "image/jpg")
fabio.save

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
