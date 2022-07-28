class BuyPropertyJob < ApplicationJob
  queue_as :default

  def perform(order)
    VeryLongTask.new.perform
    OrderMailer.owner_notice(order).deliver_now
    OrderMailer.buyer_notice(order).deliver_now
  end
end
