class SessionsController < ApplicationController
  def new
  end

  def create
    @user=User.find_by(params[:name])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id]= @user.id
    redirect_to home_path
  end

  def destroy
    session.delete(:name)
    redirect_to login_path
  end

end
