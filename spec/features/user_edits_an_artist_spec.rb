require 'rails_helper'

RSpec.feature "A user visits the artists show page" do
  scenario "and clicks on edit" do
    @artist = Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artist_path(@artist)

    click_on "Edit"
    fill_in "artist_name", with: "Eminem"
    click_on "Update Artist"

    expect(page).to have_content "Eminem"
    
    # expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
  end
end
