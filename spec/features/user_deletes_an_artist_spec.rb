require 'rails_helper'

RSpec.feature "A user visits the artists show page" do
  scenario "and clicks delete" do
    @artist = Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artist_path(@artist)

    click_on 'Delete'

    expect(current_path).to eq artists_path
    expect(page).to_not have_content @artist.name
  end
end
