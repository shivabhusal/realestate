class PagesController < ApplicationController
  def home
    @assets = Property.order(created_at: :desc).page(params[:page])
  end
end
