class AddUserToMoneyTracks < ActiveRecord::Migration[7.0]
  def change
    add_reference :money_tracks, :user, null: false, foreign_key: true
  end
end
