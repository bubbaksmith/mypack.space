class PagesController < ApplicationController

  def home
    @greeting = "\"Not all who wander are lost\" - J.R.R. Tolkien"
  end

  def brian
  	@greeting = "Way to be a fucking shit head"
  end

end
