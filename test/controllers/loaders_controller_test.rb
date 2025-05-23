require "test_helper"

class LoadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loader = loaders(:one)
  end

  test "should get index" do
    get loaders_url
    assert_response :success
  end

  test "should get new" do
    get new_loader_url
    assert_response :success
  end

  test "should create loader" do
    assert_difference("Loader.count") do
      post loaders_url, params: { loader: { amount_charged: @loader.amount_charged, balance: @loader.balance, fuel: @loader.fuel, job_date: @loader.job_date, name_of_client: @loader.name_of_client } }
    end

    assert_redirected_to loader_url(Loader.last)
  end

  test "should show loader" do
    get loader_url(@loader)
    assert_response :success
  end

  test "should get edit" do
    get edit_loader_url(@loader)
    assert_response :success
  end

  test "should update loader" do
    patch loader_url(@loader), params: { loader: { amount_charged: @loader.amount_charged, balance: @loader.balance, fuel: @loader.fuel, job_date: @loader.job_date, name_of_client: @loader.name_of_client } }
    assert_redirected_to loader_url(@loader)
  end

  test "should destroy loader" do
    assert_difference("Loader.count", -1) do
      delete loader_url(@loader)
    end

    assert_redirected_to loaders_url
  end
end
