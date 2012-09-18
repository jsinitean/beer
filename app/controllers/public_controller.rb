class PublicController < ApplicationController

  before_filter :index

  def index
    @beer = BeerList.incomplete.sorted
  end

  def complete
    @beer = BeerList.completed.sorted
  end
  

end
