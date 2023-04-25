class Group < ApplicationRecord
  belongs_to :user
  has_many :money_groups, dependent: :destroy
  has_many :money_tracks, through: :money_groups, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3 }
end
