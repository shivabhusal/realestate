require 'rails_helper'

RSpec.describe "Orders", type: :request do
  include Devise::Test::IntegrationHelpers
  let(:house) { FactoryBot.create :house }
  let(:user) { FactoryBot.create :user }

  before {
    sign_in user
  }
  describe "GET /new" do
    it "returns http success" do
      get "/orders/new", params: { kind: 'House', id: house.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http redirected" do
      post "/orders/", params: { kind: 'House', id: house.id }
      expect(response).to have_http_status(302)
    end

    it "enqueues job" do
      ActiveJob::Base.queue_adapter = :test
      expect {
        post "/orders/", params: { kind: house.class.name, id: house.id }
      }.to have_enqueued_job(BuyPropertyJob)
    end
  end

end
