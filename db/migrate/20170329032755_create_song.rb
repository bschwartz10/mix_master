class CreateSong < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.references :artist, index: true, foreign_key: true
    end
  end
end
