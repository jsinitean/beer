class UpdateRatingDecimal < ActiveRecord::Migration
  def up
      change_column :beer_lists, :rating, :decimal, :precision => 6, :scale => 2
  end

  def down
  end
end
