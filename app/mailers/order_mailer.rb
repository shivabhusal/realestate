class OrderMailer < ApplicationMailer
  def owner_notice(order)
    mail(to: order.buyable.owner_email, from: 'info@realhouse.io')
  end

  def buyer_notice(order)
    mail(to: order.user.email, from: 'info@realhouse.io')
  end
end
