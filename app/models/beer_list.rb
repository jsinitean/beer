class BeerList < ActiveRecord::Base
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  
  scope :sorted, order('beer_lists.name ASC')
  
end
