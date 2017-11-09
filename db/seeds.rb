# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |n|
  company_name = Faker::App.name
  contact_number = Faker::PhoneNumber.phone_number
  street_address = Faker::Address.street_address
  suburb = Faker::Address.city
  about_us = Faker::RickAndMorty.quote
  email = Faker::Internet.email
  password = "password"
  Dealer.create!(
    email: email,
    password: password,
    password_confirmation: password,
    company_name: company_name,
    contact_number: contact_number,
    street_address: street_address,
    suburb: suburb,
    about_us: about_us,

  )
  puts "created dealer #{n+1}"
end

dealers = Dealer.all

i = 0
dealers.each do |dealer|
  i+=1
  title = Faker::Pokemon.name
  price = Faker::Commerce.price
  description = Faker::HowIMetYourMother.quote
  dealer.desserts.build(
    title: title,
    price: price,
    description: description,
  )
  dealer.save!
  puts "created desserts #{i}"
end
