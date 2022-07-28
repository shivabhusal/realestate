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
class ComplexBuilding < ApplicationRecord
  has_many_attached :pictures

end
