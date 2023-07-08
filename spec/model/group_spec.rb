require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.new(name: 'sabim', email: 'test@test.com', password: '123456') }
  let(:group) { Group.new(name: 'Test Group', icon: 'Test Icon', user:) }
  it 'is valid with valid attributes' do
    expect(group).to be_valid
  end

  it 'is not valid without a name' do
    group.name = nil
    expect(group).to_not be_valid
  end

  it 'is not valid without an icon' do
    group.icon = nil
    expect(group).to_not be_valid
  end

  it 'has many expense groups' do
    expect(group).to respond_to(:expenses)
  end

  it 'has many expenses through expense groups' do
    expect(group).to respond_to(:expense_groups)
  end
end
