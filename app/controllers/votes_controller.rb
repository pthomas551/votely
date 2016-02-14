class VotesController < ApplicationController
  before_filter :authorize

  def create
    @vote = Vote.new(vote_params)
    if current_user == @vote.user && @vote.save
      flash[:notice] = 'Your vote has been recorded'
    else
      flash[:notice] = 'Vote failed to save'
    end
    redirect_to :back
  end

  def destroy
    @vote = Vote.find(vote_params)
    if current_user == @vote.user
      @vote.destroy
      flash[:notice] = 'Your vote has been deleted'
    else
      flash[:notice] = 'Vote failed to delete'
      redirect_to :back
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :activity_id, :venue_id)
  end
end
