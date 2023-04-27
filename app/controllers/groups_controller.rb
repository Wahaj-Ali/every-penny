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

  def destroy
    @group = Group.find(params[:id])
    authorize! :destroy, @group
    flash[:notice] = if @group.destroy
                       'Category removed successfully'
                     else
                       'Something went wrong'
                     end
    redirect_to root_path
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end

  def icons
    { 'Grocery' => 'icon0.png', 'Shopping' => 'icon1.png', 'Education' => 'icon2.png', 'Bills' => 'icon3.png',
      'Insurance' => 'icon4.png', 'Travel' => 'icon5.png' }
  end
end
