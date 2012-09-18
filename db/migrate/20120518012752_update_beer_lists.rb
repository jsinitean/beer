class UpdateBeerLists < ActiveRecord::Migration
  def up
    add_column("beer_lists", "categories_id", :string, :limit => 10)
  end

  def down
    remove_column("beer_lists", "categories_id")
  end
end
