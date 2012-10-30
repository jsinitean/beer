class CreateTable < ActiveRecord::Migration
  def up
    create_table :beer_lists do |t|
            t.string "name"
            t.string "location"
            t.string "brewer"
            t.string "beer_type"
            t.boolean "completed", :default => false
            t.boolean "file", :default => false
            t.timestamps
    end
  end

  def down
    drop_table :beer_lists
  end
end
