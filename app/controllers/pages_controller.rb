class PagesController < ApplicationController
  def home
    @assets = Property.order(:updated_at).page(params[:page])
  end
end
