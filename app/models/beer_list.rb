class BeerList < ActiveRecord::Base
  
  belongs_to :categories
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  
  scope :sorted, order('beer_lists.name ASC')
  scope :favorite, order('beer_lists.rating DESC')
  scope :completed, where(:completed => true)
  scope :incomplete, where(:completed => false)
  scope :one, where(:level => 1)
  scope :two, where(:level => 2)
  scope :three, where(:level => 3)
  scope :four, where(:level => 4)
  scope :five, where(:level => 5)    
  
  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['name ILIKE ? OR brewer ILIKE ? OR location ILIKE ? OR beer_type ILIKE ? OR available ILIKE ?', search_condition, search_condition, search_condition, search_condition, search_condition])
  end
  
end
