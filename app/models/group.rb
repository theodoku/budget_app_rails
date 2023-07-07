class Group < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  has_many :expense_groups
  has_many :expenses, through: :expense_groups

  validates :name, :icon, presence: true
end
