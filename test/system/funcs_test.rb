require "application_system_test_case"

class FuncsTest < ApplicationSystemTestCase
  setup do
    @func = funcs(:one)
  end

  test "visiting the index" do
    visit funcs_url
    assert_selector "h1", text: "Funcs"
  end

  test "creating a Func" do
    visit funcs_url
    click_on "New Func"

    click_on "Create Func"

    assert_text "Func was successfully created"
    click_on "Back"
  end

  test "updating a Func" do
    visit funcs_url
    click_on "Edit", match: :first

    click_on "Update Func"

    assert_text "Func was successfully updated"
    click_on "Back"
  end

  test "destroying a Func" do
    visit funcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Func was successfully destroyed"
  end
end
