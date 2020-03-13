require "application_system_test_case"

class EvolutionsTest < ApplicationSystemTestCase
  setup do
    @evolution = evolutions(:one)
  end

  test "visiting the index" do
    visit evolutions_url
    assert_selector "h1", text: "Evolutions"
  end

  test "creating a Evolution" do
    visit evolutions_url
    click_on "New Evolution"

    fill_in "Evolution name", with: @evolution.evolution_name
    fill_in "Evolved from", with: @evolution.evolved_from
    click_on "Create Evolution"

    assert_text "Evolution was successfully created"
    click_on "Back"
  end

  test "updating a Evolution" do
    visit evolutions_url
    click_on "Edit", match: :first

    fill_in "Evolution name", with: @evolution.evolution_name
    fill_in "Evolved from", with: @evolution.evolved_from
    click_on "Update Evolution"

    assert_text "Evolution was successfully updated"
    click_on "Back"
  end

  test "destroying a Evolution" do
    visit evolutions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evolution was successfully destroyed"
  end
end
