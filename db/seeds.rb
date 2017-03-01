# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create(:first_name => "Tamojit", :last_name => "Chakraborty", :email => "tamojit@live.com", :username => "tamojit", :password => "password")
AdminUser.create(:first_name => "Sutirtha", :last_name => "Chakraborty", :email => "sutirtha@test.com", :username => "sutirtha", :password => "password")

