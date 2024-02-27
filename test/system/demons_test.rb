require "application_system_test_case"

class DemonsTest < ApplicationSystemTestCase
  setup do
    @demon = demons(:one)
  end

  test "visiting the index" do
    visit demons_url
    assert_selector "h1", text: "Demons"
  end

  test "should create demon" do
    visit demons_url
    click_on "New demon"

    fill_in "Email", with: @demon.email
    fill_in "First name", with: @demon.first_name
    fill_in "Last name", with: @demon.last_name
    fill_in "Phone", with: @demon.phone
    fill_in "Social media", with: @demon.social_media
    click_on "Create Demon"

    assert_text "Demon was successfully created"
    click_on "Back"
  end

  test "should update Demon" do
    visit demon_url(@demon)
    click_on "Edit this demon", match: :first

    fill_in "Email", with: @demon.email
    fill_in "First name", with: @demon.first_name
    fill_in "Last name", with: @demon.last_name
    fill_in "Phone", with: @demon.phone
    fill_in "Social media", with: @demon.social_media
    click_on "Update Demon"

    assert_text "Demon was successfully updated"
    click_on "Back"
  end

  test "should destroy Demon" do
    visit demon_url(@demon)
    click_on "Destroy this demon", match: :first

    assert_text "Demon was successfully destroyed"
  end
end
