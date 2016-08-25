require 'rails_helper'

feature "the teams page" do
  scenario "a user can see all of the teams" do
    team = Team.create(name: "Huskies")
    # as a user, I want to see the list of all the teams on the teams page
    visit('/teams')
    # so that I can see which team I want to join
    save_and_open_page

    expect(page).to have_link team.name
  end
end
