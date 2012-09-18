class UpdateBeerAgain < ActiveRecord::Migration
  def up
    rename_column("beer_lists","kyle","completed")
    remove_column("beer_lists","jeremy")
    add_column("beer_lists","file", :string, :limit => 255)
  end

  def down
    rename_column("beer_lists","completed","kyle")
    add_column("beer_lists","jeremy", :string, :limit => 100)
    remove_column("beer_lists","file")
  end
end
