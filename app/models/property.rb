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
class Property < ApplicationRecord
  paginates_per 9

  def readonly?
    true
  end

  def pictures
    ActiveStorage::Attachment.where(record_id: id, record_type: kind)
  end
end
