class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You signed up successfully!"
      redirect_to home_path, @user
    else
      flash[:alert]   = "Form is invalid. See below for details."
      render "new"
    end
  end

  def login

  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end
end