require 'rails_helper'

RSpec.describe GroupsController, type: :request do
  describe 'groups index' do
    before(:each) do
      get '/groups'
    end

    it 'returns a 302 status code' do
      expect(response).to have_http_status(302)
    end
  end
end