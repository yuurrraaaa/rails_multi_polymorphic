require "application_system_test_case"

class AadDataTest < ApplicationSystemTestCase
  setup do
    @aad_datum = aad_data(:one)
  end

  test "visiting the index" do
    visit aad_data_url
    assert_selector "h1", text: "Aad Data"
  end

  test "creating a Aad datum" do
    visit aad_data_url
    click_on "New Aad Datum"

    fill_in "Teast4", with: @aad_datum.teast4
    fill_in "Test1", with: @aad_datum.test1
    fill_in "Test2", with: @aad_datum.test2
    fill_in "Test3", with: @aad_datum.test3
    click_on "Create Aad datum"

    assert_text "Aad datum was successfully created"
    click_on "Back"
  end

  test "updating a Aad datum" do
    visit aad_data_url
    click_on "Edit", match: :first

    fill_in "Teast4", with: @aad_datum.teast4
    fill_in "Test1", with: @aad_datum.test1
    fill_in "Test2", with: @aad_datum.test2
    fill_in "Test3", with: @aad_datum.test3
    click_on "Update Aad datum"

    assert_text "Aad datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Aad datum" do
    visit aad_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aad datum was successfully destroyed"
  end
end
