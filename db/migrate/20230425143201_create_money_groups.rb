class CreateMoneyGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :money_groups do |t|

      t.timestamps
    end
  end
end
