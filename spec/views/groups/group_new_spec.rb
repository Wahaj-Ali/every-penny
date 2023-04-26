require 'rails_helper'

RSpec.feature 'Group New', type: :feature do
  before(:each) do
    @user = User.create(name: 'Ali', email: 'ali@example.com', password: 'password')
    @group = Group.create(name: 'Shopping', icon: 'https://i.imgur.com/Ar3Lf3Dt.png', user_id: @user.id)
    visit user_session_path
    fill_in 'email', with: 'ali@example.com'
    fill_in 'pass', with: 'password'
    click_button 'Log in'
    click_link('Add Category')
  end

  it 'Navigate to the create category' do
    expect(page).to have_current_path(new_group_path)
  end

  it 'show Add Catgory heading' do
    expect(page).to have_content 'Add Category'
  end

  it 'display success message' do
    fill_in 'name', with: 'eggs'
    click_button 'Save'
    expect(page).to have_content 'Category created successfully.'
  end

  it 'show category icon' do
    expect(page).to have_selector('input')
  end
end
