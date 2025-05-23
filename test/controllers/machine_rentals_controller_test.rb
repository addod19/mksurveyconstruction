require "test_helper"

class MachineRentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @machine_rental = machine_rentals(:one)
  end

  test "should get index" do
    get machine_rentals_url
    assert_response :success
  end

  test "should get new" do
    get new_machine_rental_url
    assert_response :success
  end

  test "should create machine_rental" do
    assert_difference("MachineRental.count") do
      post machine_rentals_url, params: { machine_rental: { amount_paid: @machine_rental.amount_paid, color_of_machine: @machine_rental.color_of_machine, name_of_rentee: @machine_rental.name_of_rentee, number_of_points: @machine_rental.number_of_points, serial_num: @machine_rental.serial_num } }
    end

    assert_redirected_to machine_rental_url(MachineRental.last)
  end

  test "should show machine_rental" do
    get machine_rental_url(@machine_rental)
    assert_response :success
  end

  test "should get edit" do
    get edit_machine_rental_url(@machine_rental)
    assert_response :success
  end

  test "should update machine_rental" do
    patch machine_rental_url(@machine_rental), params: { machine_rental: { amount_paid: @machine_rental.amount_paid, color_of_machine: @machine_rental.color_of_machine, name_of_rentee: @machine_rental.name_of_rentee, number_of_points: @machine_rental.number_of_points, serial_num: @machine_rental.serial_num } }
    assert_redirected_to machine_rental_url(@machine_rental)
  end

  test "should destroy machine_rental" do
    assert_difference("MachineRental.count", -1) do
      delete machine_rental_url(@machine_rental)
    end

    assert_redirected_to machine_rentals_url
  end
end
