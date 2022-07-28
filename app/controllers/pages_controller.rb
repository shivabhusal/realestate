class PagesController < ApplicationController
  def home
    @assets = Property.order(updated_at: :desc).page(params[:page])
  end
end
