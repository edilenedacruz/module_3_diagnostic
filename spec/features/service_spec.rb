require 'rails_helper'

RSpec.feature "AltFuelService" do
  scenario "Find stations with zip code 80203" do

    visit "/"

    fill_in "q", with: "80203"
    click_on "Locate"

    expect(current_path).to have_content("Search results")
  end
end
