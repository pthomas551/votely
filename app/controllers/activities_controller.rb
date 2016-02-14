class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(article_params)
    if current_user && @activity.save
      redirect_to @activity
    else
      render 'new'
    end
  end

  def update
    @activity = Activity.find(params[:id])
    if current_user && @activity.update(article_params)
      redirect_to @activity
    else
      render 'edit'
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy if @activity.user == current_user
    redirect_to activities_path
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :date, :time)
  end
end
