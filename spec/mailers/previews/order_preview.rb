# Preview all emails at http://localhost:3000/rails/mailers/order
class OrderPreview < ActionMailer::Preview
  def owner_notice
    OrderMailer.with(Order.last).owner_notice
  end
end
