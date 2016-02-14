class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params) && session[:user_id] == @user.id
      redirect_to '/'
    else
      render 'edit'
    end
  end


  def destroy
    @user = User.find(params[:id])
    if session[:user_id] == @user.id
      @user.destroy
      session[:user_id] = nil
    end
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
