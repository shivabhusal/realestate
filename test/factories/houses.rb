# == Schema Information
#
# Table name: houses
#
#  id          :integer          not null, primary key
#  owner       :string
#  owner_email :string
#  address     :string
#  rooms       :integer
#  sqmt        :integer
#  floors      :integer
#  air_cond    :boolean
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :house do
    owner { Faker::Name.name }
    owner_email { Faker::Internet.email }
    address { Faker::Address.full_address }
    rooms { rand(3..9) }
    sqmt { rand(33..99) }
    floors { rand(3..9) }
    air_cond { [true, false].sample }
    price { rand(3..9) * 1000000 }
  end
end
