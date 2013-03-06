class PublicController < ApplicationController

  before_filter :index
 
  def index
    @beer = BeerList.incomplete.sorted
    @beer_count = @beer.size
  end

  def favorite
    @beer = BeerList.completed.favorite
    @beer_count = @beer.size
  end
  
  def order1
    @beer = BeerList.incomplete.one.sorted
    @beer_count = @beer.size
  end

  def order2
    @beer = BeerList.incomplete.two.sorted
    @beer_count = @beer.size
  end
  
  def order3
    @beer = BeerList.incomplete.three.sorted
    @beer_count = @beer.size
  end
  
  def order4
    @beer = BeerList.incomplete.four.sorted
    @beer_count = @beer.size
  end
  
  def order5
    @beer = BeerList.incomplete.five.sorted
    @beer_count = @beer.size
  end

  def complete
    @beer = BeerList.completed.sorted
    @beer_count = BeerList.count
  end
  
  def edit
     @beer = BeerList.find(params[:id])
  end
   
  def show
    @beer = BeerList.find(params[:id])
  end
  
  def update
    # Find object using form parameters
    @beer = BeerList.find(params[:id])
    # Update the object
    if @beer.update_attributes(params[:beer])
      # If update succeeds, redirect to the list action
      flash[:notice] = "Beer updated."
      redirect_to(:controller => 'public', :action => 'index')
    else
      # If save fails, redisplay the form so user can fix problems
      @teams = Team.order('name ASC')
      render('edit')
    end
  end
  
  def search
    @beer = BeerList.search params[:search]
  end
  
end
