# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  user_id      :integer          not null
#  buyable_type :string           not null
#  buyable_id   :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :buyable, polymorphic: true
end
