require "application_system_test_case"

class MachineRentalsTest < ApplicationSystemTestCase
  setup do
    @machine_rental = machine_rentals(:one)
  end

  test "visiting the index" do
    visit machine_rentals_url
    assert_selector "h1", text: "Machine rentals"
  end

  test "should create machine rental" do
    visit machine_rentals_url
    click_on "New machine rental"

    fill_in "Amount paid", with: @machine_rental.amount_paid
    fill_in "Color of machine", with: @machine_rental.color_of_machine
    fill_in "Name of rentee", with: @machine_rental.name_of_rentee
    fill_in "Number of points", with: @machine_rental.number_of_points
    fill_in "Serial num", with: @machine_rental.serial_num
    click_on "Create Machine rental"

    assert_text "Machine rental was successfully created"
    click_on "Back"
  end

  test "should update Machine rental" do
    visit machine_rental_url(@machine_rental)
    click_on "Edit this machine rental", match: :first

    fill_in "Amount paid", with: @machine_rental.amount_paid
    fill_in "Color of machine", with: @machine_rental.color_of_machine
    fill_in "Name of rentee", with: @machine_rental.name_of_rentee
    fill_in "Number of points", with: @machine_rental.number_of_points
    fill_in "Serial num", with: @machine_rental.serial_num
    click_on "Update Machine rental"

    assert_text "Machine rental was successfully updated"
    click_on "Back"
  end

  test "should destroy Machine rental" do
    visit machine_rental_url(@machine_rental)
    click_on "Destroy this machine rental", match: :first

    assert_text "Machine rental was successfully destroyed"
  end
end
