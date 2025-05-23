json.extract! machine_rental, :id, :serial_num, :color_of_machine, :name_of_rentee, :number_of_points, :amount_paid, :created_at, :updated_at
json.url machine_rental_url(machine_rental, format: :json)
