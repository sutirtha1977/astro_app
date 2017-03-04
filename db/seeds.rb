# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Remove all data from tables START"
AdminUser.destroy_all
Product.destroy_all
Team.destroy_all
puts "Remove all data from tables END"

puts "Creating Admin User START"

puts "Admin User 1"
AdminUser.create({
	first_name: "Tamojit", 
	last_name: "Chakraborty", 
	email: "tamojit@live.com", 
	username: "tamojit", 
	password: "password"})

puts "Admin User 2"
AdminUser.create({
	first_name: "Sutirtha", 
	last_name: "Chakraborty", 
	email: "sutirtha@test.com", 
	username: "sutirtha", 
	password: "password"})

puts "Admin User 3"
AdminUser.create({
	first_name: "Rishik", 
	last_name: "Chakraborty", 
	email: "rishik@test.com", 
	username: "rishik", 
	password: "password"})

puts "Admin User 4"
AdminUser.create({
	first_name: "Tanaya", 
	last_name: "Mukherjee", 
	email: "tanaya@test.com", 
	username: "tanaya", 
	password: "password"})

puts "Creating Admin User END"

puts "Creating Product START"

puts "Product 1"
product = Product.create({
	name: "Astrology" , 
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	category: "SERVICE" ,
	icon_path: "icons/icon1.svg",
	visible: true })

product.listings.create({
	name: "Children Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Consult A Pandit",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Fame And Fortune Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Family And Relations Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Full Vedic Horoscope Package",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Gemstone Consultation",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Health Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Litigation Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Love Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Marriage Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Numerology",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Palmistry",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Prashna Kundli - Ask A Question",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Property Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Tarot Reading",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Varshphal",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

puts "Product 2"
product = Product.create(
	:name => "Products" , 
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:category => "PRODUCT" ,
	icon_path: "icons/icon2.svg",
	:visible => true)

product.listings.create({
	name: "*Sindhurmani Siddha Kavach*",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Chowki",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Gemstone - Blue Sapphire",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Gemstone - Coral",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Gemstone - Diamond",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Gemstone - Emerald",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Gemstone - Gomedh/Cat's Eye",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Gemstone - Opal",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Gemstone - Pearl",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Gemstone - Ruby",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Gemstone - Yellow Sapphire",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Gifts",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Idols",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Magnetic",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Puja Items",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Puja Samagri",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Rudraksha",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Yantra",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

puts "Product 3"
product = Product.create(
	:name => "Pujas" , 
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:category => "SERVICE" ,
	icon_path: "icons/icon3.svg",
	:visible => true)

product.listings.create({
	name: "*Sindhurmani Puja Exclusive*",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "*Sindhurmani Puja Exclusive*",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Antim Sanskar puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Corporate Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Festival Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Grah Shanti puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Marriage Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Navratri Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Nazar & Black Magic",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Paaths, Japs And Kathas",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Personal Occasions Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Shradh puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Pind Daan Kriya With Brahman Bhoj",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Pitra Dosh Nivaran Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

product.listings.create({
	name: "Pitra Santushti Sadhna Puja With Havan",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

puts "Product 4"
product = Product.create(
	:name => "Pujas For Problems" , 
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:category => "SERVICE" ,
	icon_path: "icons/icon4.svg",
	:visible => true)

product.listings.create({
	name: "Black Magic Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})
product.listings.create({
	name: "Children Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})
product.listings.create({
	name: "Education Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})
product.listings.create({
	name: "Finance / Career Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})
product.listings.create({
	name: "Health Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})
product.listings.create({
	name: "Legal Issues Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})
product.listings.create({
	name: "Marriage & Love Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})
product.listings.create({
	name: "Mental Stress And Issues",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})
product.listings.create({
	name: "Nakshatra & Grah Pujas",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})
product.listings.create({
	name: "Relations Related",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})
product.listings.create({
	name: "Removing Doshas",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

puts "Product 5"
product = Product.create(
	:name => "Vastu" , 
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:category => "SERVICE" ,
	icon_path: "icons/icon5.svg",
	:visible => true)
product.listings.create({
	name: "Vastu For Business",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})
product.listings.create({
	name: "Vastu For Home",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true
	})

puts "Creating Product END"

puts "Creating Team START"
puts "Member 1"
Team.create(
	:first_name => "Sutirtha",
	:last_name => "Chakraborty",
	:title => "CEO",
	:email => "sutirtha@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "www.google.com",
	:facebook => "www.facebook.com",
	:twitter => "www.twitter.com",
	:linkedin => "www.linkedin.com"
	)

puts "Member 2"
Team.create(
	:first_name => "Tamojit",
	:last_name => "Chakraborty",
	:title => "CFO",
	:email => "tamojit@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non",
	:cell_phone => 9876543210,
	:google => "www.google.com",
	:facebook => "www.facebook.com",
	:twitter => "www.twitter.com",
	:linkedin => "www.linkedin.com"
	)

puts "Member 3"
Team.create(
	:first_name => "Rishik",
	:last_name => "Chakraborty",
	:title => "CTO",
	:email => "rishik@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "www.google.com",
	:facebook => "www.facebook.com",
	:twitter => "www.twitter.com",
	:linkedin => "www.linkedin.com"
	)

puts "Member 4"
Team.create(
	:first_name => "Tanaya",
	:last_name => "Mukherjee",
	:title => "CIO",
	:email => "tanaya@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "www.google.com",
	:facebook => "www.facebook.com",
	:twitter => "www.twitter.com",
	:linkedin => "www.linkedin.com"
	)

puts "Member 5"
Team.create(
	:first_name => "Mohana",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "mohana@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "www.google.com",
	:facebook => "www.facebook.com",
	:twitter => "www.twitter.com",
	:linkedin => "www.linkedin.com"
	)

puts "Member 6"
Team.create(
	:first_name => "Amrapali",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "amrapali@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "www.google.com",
	:facebook => "www.facebook.com",
	:twitter => "www.twitter.com",
	:linkedin => "www.linkedin.com"
	)

puts "Member 7"
Team.create(
	:first_name => "Ajit",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "ajit@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "www.google.com",
	:facebook => "www.facebook.com",
	:twitter => "www.twitter.com",
	:linkedin => "www.linkedin.com"
	)

puts "Member 8"
Team.create(
	:first_name => "Gargi",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "gargi@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "www.google.com",
	:facebook => "www.facebook.com",
	:twitter => "www.twitter.com",
	:linkedin => "www.linkedin.com"
	)

puts "Member 9"
Team.create(
	:first_name => "John",
	:last_name => "Doe",
	:title => "Astrologer",
	:email => "john@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "www.google.com",
	:facebook => "www.facebook.com",
	:twitter => "www.twitter.com",
	:linkedin => "www.linkedin.com"
	)

puts "Member 10"
Team.create(
	:first_name => "Jane",
	:last_name => "Doe",
	:title => "Astrologer",
	:email => "jane@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "www.google.com",
	:facebook => "www.facebook.com",
	:twitter => "www.twitter.com",
	:linkedin => "www.linkedin.com"
	)

puts "Member 11"
Team.create(
	:first_name => "Tapas",
	:last_name => "Das",
	:title => "Astrologer",
	:email => "tapas@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "www.google.com",
	:facebook => "www.facebook.com",
	:twitter => "www.twitter.com",
	:linkedin => "www.linkedin.com"
	)

puts "Creating Team END"




