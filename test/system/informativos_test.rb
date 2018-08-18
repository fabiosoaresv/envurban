require "application_system_test_case"

class InformativosTest < ApplicationSystemTestCase
  setup do
    @informativo = informativos(:one)
  end

  test "visiting the index" do
    visit informativos_url
    assert_selector "h1", text: "Informativos"
  end

  test "creating a Informativo" do
    visit informativos_url
    click_on "New Informativo"

    fill_in "Email", with: @informativo.email
    click_on "Create Informativo"

    assert_text "Informativo was successfully created"
    click_on "Back"
  end

  test "updating a Informativo" do
    visit informativos_url
    click_on "Edit", match: :first

    fill_in "Email", with: @informativo.email
    click_on "Update Informativo"

    assert_text "Informativo was successfully updated"
    click_on "Back"
  end

  test "destroying a Informativo" do
    visit informativos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Informativo was successfully destroyed"
  end
end
