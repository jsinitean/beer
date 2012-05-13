class CreateBeerLists < ActiveRecord::Migration
  def change
    create_table :beer_lists do |t|
            t.string "name"
            t.string "location"
            t.string "brewer"
            t.string "type"
            t.boolean "kyle", :default => false
            t.boolean "jeremy", :default => false
            t.timestamps
          end
        end

        def self.down
          drop_table :beer_lists
        end
      end

