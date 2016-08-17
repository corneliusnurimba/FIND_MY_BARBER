# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Barber.destroy_all

Barber.create(
    name: "Westons Barbershop",
    address: "456 William St, Perth WA 6000, Australia",
    email: "weston@gmail.com",
    phone_number: 92282692,
    photo: "http://res.cloudinary.com/dijoetjkr/image/upload/v1471340569/FMP_Barber_1_fopq1h.jpg"
  )

Barber.create(
    name: "Uncle Joe's Barber",
    address: "74-76 King St, Perth WA 6000, Australia",
    email: "unclejoe@gmail.com",
    phone_number: 92278692,
    photo: "http://res.cloudinary.com/dijoetjkr/image/upload/v1471340570/FMB_Barber_2_qdalqo.jpg"
  )

Barber.create(
    name: "Guys Grooming",
    address: "844/848 Hay St, Perth WA 6000, Australia",
    email: "guysgrooming@gmail.com",
    phone_number: 92263022,
    photo: "http://res.cloudinary.com/dijoetjkr/image/upload/v1471340570/FMB_Barber_3_iielza.jpg"
  )

Barber.create(
    name: "Carl's Barbershop",
    address: "Rosenvængets Allé 3, 2100 København Ø",
    email: "carls.barbershop@gmail.com",
    phone_number: 26782222,
    photo: "http://res.cloudinary.com/dijoetjkr/image/upload/v1471273078/FMB_coverpage_sw66h9.jpg"
  )
