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
class CommercialUnit < ApplicationRecord
  has_many_attached :pictures

end
