require "application_system_test_case"

class ShopsTest < ApplicationSystemTestCase
  setup do
    @shop = shops(:one)
  end

  test "visiting the index" do
    visit shops_url
    assert_selector "h1", text: "Shops"
  end

  test "creating a Shop" do
    visit shops_url
    click_on "New Shop"

    fill_in "Currency selector", with: @shop.currency_selector
    fill_in "Description selector", with: @shop.description_selector
    fill_in "Host", with: @shop.host
    fill_in "Price selector", with: @shop.price_selector
    click_on "Create Shop"

    assert_text "Shop was successfully created"
    click_on "Back"
  end

  test "updating a Shop" do
    visit shops_url
    click_on "Edit", match: :first

    fill_in "Currency selector", with: @shop.currency_selector
    fill_in "Description selector", with: @shop.description_selector
    fill_in "Host", with: @shop.host
    fill_in "Price selector", with: @shop.price_selector
    click_on "Update Shop"

    assert_text "Shop was successfully updated"
    click_on "Back"
  end

  test "destroying a Shop" do
    visit shops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shop was successfully destroyed"
  end
end
