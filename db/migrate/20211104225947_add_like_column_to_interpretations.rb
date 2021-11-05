class AddLikeColumnToInterpretations < ActiveRecord::Migration[5.2]
  def change
    add_column :interpretations, :like_count, :integer
  end
end
