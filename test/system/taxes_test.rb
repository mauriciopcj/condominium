require "application_system_test_case"

class TaxesTest < ApplicationSystemTestCase
  setup do
    @tax = taxes(:one)
  end

  test "visiting the index" do
    visit taxes_url
    assert_selector "h1", text: "Taxes"
  end

  test "creating a Tax" do
    visit taxes_url
    click_on "New Tax"

    fill_in "Apartment", with: @tax.apartment_id
    fill_in "Due date", with: @tax.due_date
    fill_in "Payment date", with: @tax.payment_date
    fill_in "Reference date", with: @tax.reference_date
    click_on "Create Tax"

    assert_text "Tax was successfully created"
    click_on "Back"
  end

  test "updating a Tax" do
    visit taxes_url
    click_on "Edit", match: :first

    fill_in "Apartment", with: @tax.apartment_id
    fill_in "Due date", with: @tax.due_date
    fill_in "Payment date", with: @tax.payment_date
    fill_in "Reference date", with: @tax.reference_date
    click_on "Update Tax"

    assert_text "Tax was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax" do
    visit taxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax was successfully destroyed"
  end
end
