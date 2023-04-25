class MoneyGroup < ApplicationRecord
  belongs_to :group
  belongs_to :money_track
end