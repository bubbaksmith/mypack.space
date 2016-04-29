class PagesController < ApplicationController

  def home
    @greeting = "\"Not all who wander are lost\" - J.R.R. Tolkien"
  end

  def brian
  	@greeting = "Way to be a fucking shit head"
  end

  def sign_up

  end

  def weight
    @greeting = "Way to go you fat peice of shit"
  end

end
