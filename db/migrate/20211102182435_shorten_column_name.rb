class ShortenColumnName < ActiveRecord::Migration[5.2]
  def change
    change_table :interpretations do |t|
      t.rename :critique, :crit
    end

    change_table :artworks do |c|
      c.rename :year_made, :year
    end
  end
end
