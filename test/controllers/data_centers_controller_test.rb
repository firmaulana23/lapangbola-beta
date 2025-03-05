require "test_helper"

class DataCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_center = data_centers(:one)
  end

  test "should get index" do
    get data_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_data_center_url
    assert_response :success
  end

  test "should create data_center" do
    assert_difference("DataCenter.count") do
      post data_centers_url, params: { data_center: {} }
    end

    assert_redirected_to data_center_url(DataCenter.last)
  end

  test "should show data_center" do
    get data_center_url(@data_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_center_url(@data_center)
    assert_response :success
  end

  test "should update data_center" do
    patch data_center_url(@data_center), params: { data_center: {} }
    assert_redirected_to data_center_url(@data_center)
  end

  test "should destroy data_center" do
    assert_difference("DataCenter.count", -1) do
      delete data_center_url(@data_center)
    end

    assert_redirected_to data_centers_url
  end
end
