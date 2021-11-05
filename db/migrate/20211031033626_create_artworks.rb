class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |c|
      c.string :title
      c.integer :year_made
      c.string :artist
      c.timestamps
    end
  end
end
