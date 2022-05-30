class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "You are successfully authenticated"
      redirect_to user
    else
      flash.now[:error] = "Wrong email or password"
      render action: 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
