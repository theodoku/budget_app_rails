require 'rails_helper'

RSpec.describe ExpensesController, type: :request do
  describe 'expenses index' do
    before(:each) do
      get group_expenses_path(1)
    end

    it 'returns a 302 status code' do
      expect(response).to have_http_status(302)
    end
  end
end
