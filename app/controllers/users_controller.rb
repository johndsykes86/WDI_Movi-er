class UsersController < ApplicationController



  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to login_path
      flash[:notice] = "Account infomation created successfully, please log in"
    else
      redirect_to signup_path
      flash[:alert] = "We're missing something, please check to make sure your information is correct and try again"
    end
  end

  def edit
  end

  def update
    @user = current_user

    @user.update(email: params[:user][:email], password: params[:user][:password], avatar_url: params[:user][:avatar_url] )
    redirect_to profile_path
    flash[:notice] = "Account information updated successfully"
  end

  def destroy
  end

  private
  def user_params
   params.require(:user).permit( :email, :first_name, :last_name, :password, :password_confirmation)
  end
end
