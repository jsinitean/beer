class AddBeerNotes < ActiveRecord::Migration
  def up
    add_column("beer_lists", "notes", :string, :limit => 255) 
  end

  def down
    remove_column("beer_lists", "notes", :string, :limit => 255) 
  end
end
