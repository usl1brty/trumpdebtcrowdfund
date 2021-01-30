require "application_system_test_case"

class PoliticiansTest < ApplicationSystemTestCase
  setup do
    @politician = politicians(:one)
  end

  test "visiting the index" do
    visit politicians_url
    assert_selector "h1", text: "Politicians"
  end

  test "creating a Politician" do
    visit politicians_url
    click_on "New Politician"

    fill_in "Address", with: @politician.address
    fill_in "Birthday", with: @politician.birthday
    fill_in "Contact form", with: @politician.contact_form
    fill_in "First name", with: @politician.first_name
    fill_in "Full name", with: @politician.full_name
    fill_in "Last name", with: @politician.last_name
    fill_in "Middle name", with: @politician.middle_name
    fill_in "Nickname", with: @politician.nickname
    fill_in "Party", with: @politician.party
    fill_in "Phone", with: @politician.phone
    fill_in "State", with: @politician.state
    fill_in "Type", with: @politician.type
    fill_in "Url", with: @politician.url
    click_on "Create Politician"

    assert_text "Politician was successfully created"
    click_on "Back"
  end

  test "updating a Politician" do
    visit politicians_url
    click_on "Edit", match: :first

    fill_in "Address", with: @politician.address
    fill_in "Birthday", with: @politician.birthday
    fill_in "Contact form", with: @politician.contact_form
    fill_in "First name", with: @politician.first_name
    fill_in "Full name", with: @politician.full_name
    fill_in "Last name", with: @politician.last_name
    fill_in "Middle name", with: @politician.middle_name
    fill_in "Nickname", with: @politician.nickname
    fill_in "Party", with: @politician.party
    fill_in "Phone", with: @politician.phone
    fill_in "State", with: @politician.state
    fill_in "Type", with: @politician.type
    fill_in "Url", with: @politician.url
    click_on "Update Politician"

    assert_text "Politician was successfully updated"
    click_on "Back"
  end

  test "destroying a Politician" do
    visit politicians_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Politician was successfully destroyed"
  end
end
