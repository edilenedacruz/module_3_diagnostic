require 'rails_helper'

RSpec.feature "AltFuelService" do
  scenario "Find stations with zip code 80203" do

    visit "/"

    fill_in "q", with: "80203"
    click_on "Locate"
    save_and_open_page
    expect(page).to have_content("Search results")

    expect(page).to have_content("List of 10 closests stations within 6 miles")
    expect()
  end
end


As a user
When I visit "/"
And I fill in the search form with 80203
And I click "Locate"
Then I should be on page "/search" with parameters visible in the url
Then I should see a list of the 10 closest stations within 6 miles sorted by distance
And the stations should be limited to Electric and Propane
And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
