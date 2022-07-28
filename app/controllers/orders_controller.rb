class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_asset, only: %i(new create)

  PROPERTY_WHITE_LIST = {
    'House'           => House,
    'CommercialUnit'  => CommercialUnit,
    'ComplexBuilding' => ComplexBuilding
  }

  def new
  end

  def create
    Order.create! user: current_user, buyable: @asset
    redirect_back fallback_location: root_path, notice: 'Property buying request has been filed. You will get an email for confirmation in a while.'
  end

  private

  def set_asset
    property = PROPERTY_WHITE_LIST[params[:kind]]
    @asset = property.find(params[:id])
  end
end
