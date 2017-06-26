class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      redirect_to signup_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
   params.require(:user).permit( :email, :first_name, :last_name, :password, :password_confirmation)
  end
end
