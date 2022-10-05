require "application_system_test_case"

class AadsTest < ApplicationSystemTestCase
  setup do
    @aad = aads(:one)
  end

  test "visiting the index" do
    visit aads_url
    assert_selector "h1", text: "Aads"
  end

  test "creating a Aad" do
    visit aads_url
    click_on "New Aad"

    fill_in "Test1", with: @aad.test1
    fill_in "Test2", with: @aad.test2
    fill_in "Test3", with: @aad.test3
    click_on "Create Aad"

    assert_text "Aad was successfully created"
    click_on "Back"
  end

  test "updating a Aad" do
    visit aads_url
    click_on "Edit", match: :first

    fill_in "Test1", with: @aad.test1
    fill_in "Test2", with: @aad.test2
    fill_in "Test3", with: @aad.test3
    click_on "Update Aad"

    assert_text "Aad was successfully updated"
    click_on "Back"
  end

  test "destroying a Aad" do
    visit aads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aad was successfully destroyed"
  end
end
