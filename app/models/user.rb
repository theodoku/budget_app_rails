class User < ApplicationRecord
  has_many :expenses
  has_many :groups

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, presence: true
end
