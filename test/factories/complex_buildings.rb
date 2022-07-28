# == Schema Information
#
# Table name: complex_buildings
#
#  id          :integer          not null, primary key
#  owner       :string
#  owner_email :string
#  address     :string
#  units       :integer
#  sqmt        :integer
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :complex_building do
    owner { Faker::Name.name }
    owner_email { Faker::Internet.email }
    address { Faker::Address.full_address }
    units { rand(3..9) }
    sqmt { rand(33..99) }
    price { rand(3..9) * 1000000 }
  end
end
