require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  include Devise::Test::ControllerHelpers

  describe 'GET index' do
    it 'returns a 200 status code' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
end
