class Category < ActiveRecord::Base
  
  has_many :beer_lists
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  
end
