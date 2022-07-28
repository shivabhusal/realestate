# == Schema Information
#
# Table name: properties
#
#  id         :integer
#  owner      :string
#  address    :string
#  sqmt       :integer
#  price      :decimal(, )
#  floors     :integer
#  air_cond   :boolean
#  rooms      :integer
#  kind       :
#  parking    :
#  shops      :
#  units      :
#  created_at :datetime
#  updated_at :datetime
#
require 'rails_helper'

RSpec.describe Property, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
