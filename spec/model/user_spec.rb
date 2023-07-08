require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(name: 'sabim', email: 'test@test.com', password: '123456') }
  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'has many expenses' do
    expect(user).to respond_to(:expenses)
  end

  it 'has many groups' do
    expect(user).to respond_to(:groups)
  end
end
