class AddUsernameColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :interpretations, :username, :string
  end
end
