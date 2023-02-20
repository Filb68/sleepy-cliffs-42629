# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# destroy_all


User.destroy_all


# Users create
30.times do |i|
    User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email(domain: 'yopmail.com'),
    )
    puts "*"*(i+1)
    puts "#{i+1} user(s) created"
end

# # Articles create
# 20.times do |i|
#     Article.create(
#         title:Faker::Book.title,
#         body:Faker::Lorem.paragraphs(number: 2),
#         user_id:User.all.sample.id
#     )
#     puts "*"*(i+1)
#     puts "#{i+1} article(s) created"
# end




# # Cities create
# 10.times do |i|
#     City.create(
#         name:Faker::Address.city,
#         zip_code:Faker::Address.zip_code
#     )
#     puts "*"*(i+1)
#     puts "#{i+1} city(ies) created"
# end




    puts "##################################################"
    puts "#                                                #"
    puts "#             C'est fait !!!                     #"          
    puts "#                                                ""
    puts "#                                                #"
    puts "##################################################"
