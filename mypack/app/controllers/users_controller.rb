class UsersController < ApplicationController

  before_filter :save_login_state, :only => [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You signed up successfully! Now please log in."
      redirect_to login_path
    else
      flash[:alert]   = "Form is invalid. See below for details."
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end

end