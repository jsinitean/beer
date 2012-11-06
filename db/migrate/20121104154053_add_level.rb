class AddLevel < ActiveRecord::Migration
  def up
    add_column("beer_lists", "level", :int) 
  end

  def down
    add_column("beer_lists", "level", :int) 
  end
end
