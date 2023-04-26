require 'rails_helper'

RSpec.feature 'Group Show', type: :feature do
  before(:each) do
    @user = User.create(name: 'Ali', email: 'ali@example.com', password: 'password')
    @group = Group.create(name: 'Shopping', icon: 'https://i.imgur.com/Ar3Lf3Dt.png', user_id: @user.id)
    visit user_session_path
    fill_in 'email', with: 'ali@example.com'
    fill_in 'pass', with: 'password'
    click_button 'Log in'
    click_link('Shopping')
  end

  it 'Navigate to the show category' do
    expect(page).to have_current_path(group_path(@group))
  end

  it 'show Catgory Details heading' do
    expect(page).to have_content 'Category Details'
  end

  it 'show category name' do
    expect(page).to have_content @group.name
  end

  it 'Navigate to the create transaction' do
    click_link('Add transaction')
    expect(page).to have_current_path(new_group_money_track_path(@group))
  end
end