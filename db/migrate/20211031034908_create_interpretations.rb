class CreateInterpretations < ActiveRecord::Migration[5.2]
  def change
    create_table :interpretations do |c|
      c.string :critique
      c.integer :rating
      c.integer :artwork_id
      c.timestamps
    end
  end
end
