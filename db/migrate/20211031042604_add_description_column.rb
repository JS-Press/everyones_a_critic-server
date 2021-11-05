class AddDescriptionColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :description, :string
  end
end
