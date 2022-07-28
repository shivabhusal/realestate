class BuyPropertyJob < ApplicationJob
  queue_as :default

  def perform(order)
    VeryLongTask.new.perform
  end
end
