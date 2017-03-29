require 'rails_helper'

RSpec.feature "A user visits the artist index page" do
  scenario "they should see each artists name" do
    Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    Artist.create(name: "Eminem", image_path: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR1BIQpeBhaFbZbf3CdCbaWH_KlHO6YOUsoOhrkwLG15cw29S-W")

    visit artists_path
    expect(page).to have_content "Bob Marley"
    expect(page).to have_content "Eminem"
  end

  scenario "each name should link to that artist's individual page" do
    Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    Artist.create(name: "Eminem", image_path: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR1BIQpeBhaFbZbf3CdCbaWH_KlHO6YOUsoOhrkwLG15cw29S-W")

    visit artists_path

    click_on "Bob Marley"
    
    expect(page).to have_content "Bob Marley"
    # expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
  end
end
