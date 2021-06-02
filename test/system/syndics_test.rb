require "application_system_test_case"

class SyndicsTest < ApplicationSystemTestCase
  setup do
    @syndic = syndics(:one)
  end

  test "visiting the index" do
    visit syndics_url
    assert_selector "h1", text: "Syndics"
  end

  test "creating a Syndic" do
    visit syndics_url
    click_on "New Syndic"

    fill_in "End", with: @syndic.end
    fill_in "Start", with: @syndic.start
    fill_in "User", with: @syndic.user_id
    click_on "Create Syndic"

    assert_text "Syndic was successfully created"
    click_on "Back"
  end

  test "updating a Syndic" do
    visit syndics_url
    click_on "Edit", match: :first

    fill_in "End", with: @syndic.end
    fill_in "Start", with: @syndic.start
    fill_in "User", with: @syndic.user_id
    click_on "Update Syndic"

    assert_text "Syndic was successfully updated"
    click_on "Back"
  end

  test "destroying a Syndic" do
    visit syndics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syndic was successfully destroyed"
  end
end
