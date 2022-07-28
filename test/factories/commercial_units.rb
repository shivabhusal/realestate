# == Schema Information
#
# Table name: commercial_units
#
#  id          :integer          not null, primary key
#  owner       :string
#  owner_email :string
#  address     :string
#  shops       :integer
#  sqmt        :integer
#  parking     :integer
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :commercial_unit do
    owner { Faker::Name.name }
    owner_email { Faker::Internet.email }
    address { Faker::Address.full_address }
    shops { rand(3..9) }
    sqmt { rand(33..99) }
    parking { rand(3..9) }
    price { rand(3..9) * 1000000 }
  end
end
