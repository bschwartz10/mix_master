require 'rails_helper'

RSpec.feature "A user visits the individual artist page" do
  scenario "user tries to create new song without a name" do
    artist = create(:artist)

    visit artist_path(artist)

    click_on "New Song"
    click_on "Create Song"

    expect(page).to have_content "Title can't be blank"
  end
end
