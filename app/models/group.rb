class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :expense_groups
  has_many :expenses, through: :expense_groups

  validates :name, :icon, presence: true
end
