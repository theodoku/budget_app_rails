class User < ApplicationRecord
  has_many :expenses
  has_many :groups, foreign_key: 'author_id'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
end
