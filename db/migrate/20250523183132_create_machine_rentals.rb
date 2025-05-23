class CreateMachineRentals < ActiveRecord::Migration[7.2]
  def change
    create_table :machine_rentals do |t|
      t.string :serial_num
      t.string :color_of_machine
      t.string :name_of_rentee
      t.integer :number_of_points
      t.decimal :amount_paid

      t.timestamps
    end
  end
end
