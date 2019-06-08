require "application_system_test_case"

class IndividualsTest < ApplicationSystemTestCase
  setup do
    @individual = individuals(:one)
  end

  test "visiting the index" do
    visit individuals_url
    assert_selector "h1", text: "Individuals"
  end

  test "creating a Individual" do
    visit individuals_url
    click_on "New Individual"

    fill_in "Cause death", with: @individual.cause_death
    fill_in "Date birth", with: @individual.date_birth
    fill_in "Date death", with: @individual.date_death
    fill_in "Gender", with: @individual.gender
    fill_in "Misc notes", with: @individual.misc_notes
    fill_in "Name familiar", with: @individual.name_familiar
    fill_in "Name first", with: @individual.name_first
    fill_in "Name last", with: @individual.name_last
    fill_in "Name maiden", with: @individual.name_maiden
    fill_in "Name middle", with: @individual.name_middle
    fill_in "Place birth", with: @individual.place_birth
    click_on "Create Individual"

    assert_text "Individual was successfully created"
    click_on "Back"
  end

  test "updating a Individual" do
    visit individuals_url
    click_on "Edit", match: :first

    fill_in "Cause death", with: @individual.cause_death
    fill_in "Date birth", with: @individual.date_birth
    fill_in "Date death", with: @individual.date_death
    fill_in "Gender", with: @individual.gender
    fill_in "Misc notes", with: @individual.misc_notes
    fill_in "Name familiar", with: @individual.name_familiar
    fill_in "Name first", with: @individual.name_first
    fill_in "Name last", with: @individual.name_last
    fill_in "Name maiden", with: @individual.name_maiden
    fill_in "Name middle", with: @individual.name_middle
    fill_in "Place birth", with: @individual.place_birth
    click_on "Update Individual"

    assert_text "Individual was successfully updated"
    click_on "Back"
  end

  test "destroying a Individual" do
    visit individuals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Individual was successfully destroyed"
  end
end
