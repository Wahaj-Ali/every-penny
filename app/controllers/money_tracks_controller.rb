class MoneyTracksController < ApplicationController
  def new
    @group = Group.find(params[:group_id])
    @money_track = MoneyTrack.new
  end

  def create
    @group = Group.find(params[:group_id])
    @money_track = @group.money_tracks.create(moneytrack_params)
    if @money_track.save
      flash[:notice] = 'Transaction created successfully.'
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def moneytrack_params
    params.require(:money_track).permit(:name, :amount, :user_id)
  end
end
