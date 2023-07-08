require 'rails_helper'

RSpec.describe Expense, type: :model do
  let(:user) { User.create(name: 'Test User', email: 'test@example.com') }
  let(:expense) { Expense.new(name: 'Test Expense', amount: 100.0, author: user) }

  it "is not valid without a name" do
    expense.name = nil
    expect(expense).to_not be_valid
  end

  it "is not valid without an amount" do
    expense.amount = nil
    expect(expense).to_not be_valid
  end

  it 'has many expense groups' do
    expect(expense).to respond_to(:expense_groups)
  end

  it 'has many groups through expense groups' do
    expect(expense).to respond_to(:expense_groups)
  end
end
