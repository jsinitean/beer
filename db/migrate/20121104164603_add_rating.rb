class AddRating < ActiveRecord::Migration
  def up
    add_column("beer_lists", "rating", :int) 
  end

  def down
    remove_column("beer_lists", "rating", :int) 
  end
end
