require "application_system_test_case"

class ShopingsTest < ApplicationSystemTestCase
  setup do
    @shoping = shopings(:one)
  end

  test "visiting the index" do
    visit shopings_url
    assert_selector "h1", text: "Shopings"
  end

  test "creating a Shoping" do
    visit shopings_url
    click_on "New Shoping"

    click_on "Create Shoping"

    assert_text "Shoping was successfully created"
    click_on "Back"
  end

  test "updating a Shoping" do
    visit shopings_url
    click_on "Edit", match: :first

    click_on "Update Shoping"

    assert_text "Shoping was successfully updated"
    click_on "Back"
  end

  test "destroying a Shoping" do
    visit shopings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shoping was successfully destroyed"
  end
end
