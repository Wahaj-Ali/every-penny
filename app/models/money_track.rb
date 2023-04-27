class MoneyTrack < ApplicationRecord
  belongs_to :user
  has_many :money_groups, dependent: :destroy
  has_many :groups, through: :money_groups, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3 }
  validates :amount, numericality: { greater_than: 0, less_than: 1_000_000 }
end
