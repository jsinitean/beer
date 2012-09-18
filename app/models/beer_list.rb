class BeerList < ActiveRecord::Base
  
  belongs_to :categories
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  
  scope :sorted, order('beer_lists.name ASC')
  scope :completed, where(:completed => true)
  scope :incomplete, where(:completed => false)
  
end
