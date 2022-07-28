class Property < ApplicationRecord
  paginates_per 9

  def readonly?
    true
  end

  def pictures
    ActiveStorage::Attachment.where(record_id: id, record_type: kind)
  end
end
