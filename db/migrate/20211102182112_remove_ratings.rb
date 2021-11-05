class RemoveRatings < ActiveRecord::Migration[5.2]
  def change
    remove_column :interpretations, :rating
  end
end
