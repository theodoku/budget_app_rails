class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :expense_groups
  has_many :groups, through: :expense_groups

  validates :name, :author_id, presence: true
  validates :amount, numericality: true
end
