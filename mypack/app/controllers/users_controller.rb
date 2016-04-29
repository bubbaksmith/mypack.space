class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You signed up successfully!"
      # flash[:color]= "valid"
    else
      flash[:alert] = "Form is invalid. See below for details."
      # flash[:color]= "invalid"
    end
    render "new"
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end
end