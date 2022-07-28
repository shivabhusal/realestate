# == Schema Information
#
# Table name: houses
#
#  id         :integer          not null, primary key
#  owner      :string
#  address    :string
#  rooms      :integer
#  sqmt       :integer
#  floors     :integer
#  air_cond   :boolean
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe House, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
