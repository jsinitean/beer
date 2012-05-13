class BeerController < ApplicationController
  
  before_filter :index
  
  def index
    @beer = BeerList.sorted
  end

end
