require 'rails_helper'

RSpec.feature 'MoneyTrack new', type: :feature do
  before(:each) do
    @user = User.create(name: 'Ali', email: 'ali@example.com', password: 'password')
    @group = Group.create(name: 'Shopping', icon: 'https://i.imgur.com/Ar3Lf3Dt.png', user_id: @user.id)
    visit user_session_path
    fill_in 'email', with: 'ali@example.com'
    fill_in 'pass', with: 'password'
    click_button 'Log in'
    click_link('Shopping')
    click_link('Add transaction')
  end

  it 'Navigate to the create transaction' do
    expect(page).to have_current_path(new_group_money_track_path(@group))
  end

  it 'show Add Transcation heading' do
    expect(page).to have_content('Add Transaction')
  end

  it 'show category icon' do
    expect(page).to have_selector('input')
  end
  it 'display success message' do
    fill_in 'name', with: 'eggs'
    fill_in 'amount', with: 10
    click_button 'Save'
    expect(page).to have_content 'Transaction created successfully.'
  end
end