require "application_system_test_case"

class DataCentersTest < ApplicationSystemTestCase
  setup do
    @data_center = data_centers(:one)
  end

  test "visiting the index" do
    visit data_centers_url
    assert_selector "h1", text: "Data centers"
  end

  test "should create data center" do
    visit data_centers_url
    click_on "New data center"

    click_on "Create Data center"

    assert_text "Data center was successfully created"
    click_on "Back"
  end

  test "should update Data center" do
    visit data_center_url(@data_center)
    click_on "Edit this data center", match: :first

    click_on "Update Data center"

    assert_text "Data center was successfully updated"
    click_on "Back"
  end

  test "should destroy Data center" do
    visit data_center_url(@data_center)
    click_on "Destroy this data center", match: :first

    assert_text "Data center was successfully destroyed"
  end
end
