# == Schema Information
#
# Table name: commercial_units
#
#  id         :integer          not null, primary key
#  owner      :string
#  address    :string
#  shops      :integer
#  sqmt       :integer
#  parking    :integer
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe CommercialUnit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
