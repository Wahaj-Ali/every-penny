class GroupsController < ApplicationController
  def index
    @groups = Group.where(user_id: current_user.id)
  end

  def show
    @group = Group.find(params[:id])
    @group_money_tracks = @group.money_tracks.all
  end

  def new
    @group = Group.new
    @icons = icons
  end

  def create
    @group = current_user.groups.create(group_params)
    if @group.save
      flash[:notice] = 'Category created successfully.'
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end

  def icons
    ['https://i.imgur.com/Ar3Lf3Dt.png',
     'https://i.imgur.com/R7Q2ZVht.png',
     'https://i.imgur.com/X99X2Kgt.png',
     'https://i.imgur.com/bvFovBRt.png',
     'https://i.imgur.com/mZ6ynFvt.png',
     'https://i.imgur.com/ZVKPCfjt.png']
  end
end
