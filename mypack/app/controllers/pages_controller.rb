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
    # @greeting = "\"Not all who wander are lost\" - J.R.R. Tolkien"
    @greeting = "Don't run with scissors. Unless you named your dog sceissors. In which case thats cool..."
  end

end
