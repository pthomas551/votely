class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:notice] = 'Login failed'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
