# == Schema Information
#
# Table name: complex_buildings
#
#  id         :integer          not null, primary key
#  owner      :string
#  address    :string
#  units      :integer
#  sqmt       :integer
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe ComplexBuilding, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
