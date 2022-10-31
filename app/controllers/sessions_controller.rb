class SessionsController < ApplicationController
  def index; end

  def new; end

  #login
  def create
    @user = User.find_by(email_address: params[:email_address])
    if @user && @user.authentication(params[:password])
      session[:user_id] = @user.id
      render json: @user
    else
      redirect_to '/login'
    end
  end

  #log out 
  def destory
    session.delete :user_id
    head :no_content
  end
end
