class AddAvailable < ActiveRecord::Migration
  def up
    add_column("beer_lists", "available", :string, :limit => 255)
  end

  def down
    remove_column("beer_lists", "available", :string, :limit => 255)
  end
end
