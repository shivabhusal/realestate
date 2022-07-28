# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

images = {
  House           => %w(property1 property2 property3 property4),
  ComplexBuilding => %w(complex1 complex2 complex3 complex4),
  CommercialUnit  => %w(complex1 complex2 complex3),
}

10.times do
  h         = House.create owner:       Faker::Name.name,
                           address:     Faker::Address.street_address,
                           owner_email: Faker::Internet.email,
                           rooms:       rand(2..9),
                           sqmt:        rand(25..90),
                           floors:      rand(2..7),
                           air_cond:    [true, false].sample,
                           price:       rand(2..9) * 100000
  file_name = images[House].sample + '.jpg'
  h.pictures.attach(io: File.open(Rails.root.join('app/assets/images', file_name)), filename: file_name)

  com       = CommercialUnit.create owner:       Faker::Name.name,
                                    owner_email: Faker::Internet.email,
                                    address:     Faker::Address.street_address,
                                    shops:       rand(2..9),
                                    sqmt:        rand(25..90),
                                    parking:     rand(2..7),
                                    price:       rand(2..9) * 100000
  file_name = images[CommercialUnit].sample + '.jpg'
  com.pictures.attach(io: File.open(Rails.root.join('app/assets/images', file_name)), filename: file_name)

  comp = ComplexBuilding.create owner:       Faker::Name.name,
                                owner_email: Faker::Internet.email,
                                address:     Faker::Address.street_address,
                                units:       rand(2..9),
                                sqmt:        rand(25..90),
                                price:       rand(2..9) * 100000

  file_name = images[ComplexBuilding].sample + '.jpg'
  comp.pictures.attach(io: File.open(Rails.root.join('app/assets/images', file_name)), filename: file_name)
end

5.times do |i|
  User.create name: Faker::Name.name, email: "user#{i}@example.com", password: 'password', password_confirmation: 'password'
end

puts "Seeding Done!"
