require "application_system_test_case"

class LoadersTest < ApplicationSystemTestCase
  setup do
    @loader = loaders(:one)
  end

  test "visiting the index" do
    visit loaders_url
    assert_selector "h1", text: "Loaders"
  end

  test "should create loader" do
    visit loaders_url
    click_on "New loader"

    fill_in "Amount charged", with: @loader.amount_charged
    fill_in "Balance", with: @loader.balance
    fill_in "Fuel", with: @loader.fuel
    fill_in "Job date", with: @loader.job_date
    fill_in "Name of client", with: @loader.name_of_client
    click_on "Create Loader"

    assert_text "Loader was successfully created"
    click_on "Back"
  end

  test "should update Loader" do
    visit loader_url(@loader)
    click_on "Edit this loader", match: :first

    fill_in "Amount charged", with: @loader.amount_charged
    fill_in "Balance", with: @loader.balance
    fill_in "Fuel", with: @loader.fuel
    fill_in "Job date", with: @loader.job_date
    fill_in "Name of client", with: @loader.name_of_client
    click_on "Update Loader"

    assert_text "Loader was successfully updated"
    click_on "Back"
  end

  test "should destroy Loader" do
    visit loader_url(@loader)
    click_on "Destroy this loader", match: :first

    assert_text "Loader was successfully destroyed"
  end
end
