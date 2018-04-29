require "application_system_test_case"

class NamesTest < ApplicationSystemTestCase
  setup do
    @name = names(:one)
  end

  test "visiting the index" do
    visit names_url
    assert_selector "h1", text: "Names"
  end

  test "creating a Name" do
    visit names_url
    click_on "New Name"

    fill_in "Address", with: @name.address
    fill_in "Email Address", with: @name.email_address
    fill_in "Float", with: @name.float
    fill_in "Price", with: @name.price
    fill_in "Seat Id Seq", with: @name.seat_id_seq
    fill_in "String", with: @name.string
    click_on "Create Name"

    assert_text "Name was successfully created"
    click_on "Back"
  end

  test "updating a Name" do
    visit names_url
    click_on "Edit", match: :first

    fill_in "Address", with: @name.address
    fill_in "Email Address", with: @name.email_address
    fill_in "Float", with: @name.float
    fill_in "Price", with: @name.price
    fill_in "Seat Id Seq", with: @name.seat_id_seq
    fill_in "String", with: @name.string
    click_on "Update Name"

    assert_text "Name was successfully updated"
    click_on "Back"
  end

  test "destroying a Name" do
    visit names_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Name was successfully destroyed"
  end
end
