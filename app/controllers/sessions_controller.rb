class SessionsController < ApplicationController
  def create
    # first, try and find the user by email in the database
    @user = User.find_by_email(params[:login][:email])
    # if the user exists and the password is correct
    if @user && @user.authenticate(params[:login][:password])
    # generate cookies for user and redirect them.
    session[:user_id] = @user.id
    redirect_to root_path
    else
    #redirect to login screen
    redirect_to signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to signin_path
  end
end
