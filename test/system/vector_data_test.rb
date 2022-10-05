require "application_system_test_case"

class VectorDataTest < ApplicationSystemTestCase
  setup do
    @vector_datum = vector_data(:one)
  end

  test "visiting the index" do
    visit vector_data_url
    assert_selector "h1", text: "Vector Data"
  end

  test "creating a Vector datum" do
    visit vector_data_url
    click_on "New Vector Datum"

    fill_in "Data", with: @vector_datum.data_id
    fill_in "Data type", with: @vector_datum.data_type
    fill_in "Research", with: @vector_datum.research_id
    click_on "Create Vector datum"

    assert_text "Vector datum was successfully created"
    click_on "Back"
  end

  test "updating a Vector datum" do
    visit vector_data_url
    click_on "Edit", match: :first

    fill_in "Data", with: @vector_datum.data_id
    fill_in "Data type", with: @vector_datum.data_type
    fill_in "Research", with: @vector_datum.research_id
    click_on "Update Vector datum"

    assert_text "Vector datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Vector datum" do
    visit vector_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vector datum was successfully destroyed"
  end
end
