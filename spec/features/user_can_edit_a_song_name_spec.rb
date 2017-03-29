require 'rails_helper'

RSpec.feature "A user visits a song's show page" do
  scenario "user edits and updates a song title" do

    artist = create(:artist)
    song = artist.songs.create(title: "Three Birds")

    visit song_path(song)

    click_on "Edit"
    fill_in "song_title", with: song.title
    click_on "Update Song"

    expect(page).to have_content song.title
    expect(page).to have_link artist.name, href: artist_path(song.artist)
  end
end
