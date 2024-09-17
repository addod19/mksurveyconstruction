class AddUserRefToBlockSupply < ActiveRecord::Migration[7.2]
  def change
    add_reference :block_supplies, :user, null: false, foreign_key: true
  end
end
