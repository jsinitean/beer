class BeerList < ActiveRecord::Base
  
  belongs_to :categories
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  
  scope :sorted, order('beer_lists.name ASC')
  scope :completed, where(:completed => true)
  scope :incomplete, where(:completed => false)
  
  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['name LIKE ? OR brewer LIKE ? OR location LIKE ? OR beer_type LIKE ?', search_condition, search_condition, search_condition, search_condition])
  end
  
end
