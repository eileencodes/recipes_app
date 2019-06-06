require "application_system_test_case"

class CakesTest < ApplicationSystemTestCase
  setup do
    @cake = cakes(:one)
  end

  test "visiting the index" do
    visit cakes_url
    assert_selector "h1", text: "Cakes"
  end

  test "creating a Cake" do
    visit cakes_url
    click_on "New Cake"

    fill_in "Cake type", with: @cake.cake_type
    fill_in "Name", with: @cake.name
    click_on "Create Cake"

    assert_text "Cake was successfully created"
    click_on "Back"
  end

  test "updating a Cake" do
    visit cakes_url
    click_on "Edit", match: :first

    fill_in "Cake type", with: @cake.cake_type
    fill_in "Name", with: @cake.name
    click_on "Update Cake"

    assert_text "Cake was successfully updated"
    click_on "Back"
  end

  test "destroying a Cake" do
    visit cakes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cake was successfully destroyed"
  end
end
