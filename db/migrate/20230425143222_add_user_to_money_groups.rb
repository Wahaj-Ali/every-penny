class AddUserToMoneyGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :money_groups, :user, null: false, foreign_key: true
  end
end
