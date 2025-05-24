class AddRentalDateToMachineRentals < ActiveRecord::Migration[7.2]
  def change
    add_column :machine_rentals, :rental_date, :date
  end
end
