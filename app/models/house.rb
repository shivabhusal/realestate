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
class House < ApplicationRecord
  has_many_attached :pictures

end
