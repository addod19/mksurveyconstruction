class BlockSupplies < ActiveRecord::Migration[7.2]
  def change
    create_table :block_supplies do |t|
      t.string :name, null: false, default: ""
      t.string :type_of_blocks, null: false, default: ""
      t.string :number_of_blocks, null: false, default: ""
      t.string :contact, null: false, default: ""
      t.string :payment, null: false, default: ""
      t.string :balance, null: false, default: ""

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
