class CreateMoneyTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :money_tracks do |t|
      t.string :name
      t.decimal :amount

      t.timestamps
    end
  end
end
