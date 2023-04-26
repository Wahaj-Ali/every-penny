require 'rails_helper'

RSpec.describe 'GroupTrack', type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'Alice', email: 'alice@mail.com', password: 'password') }
  let(:group) { user.groups.create(name: 'Shopping', icon: 'https://i.imgur.com/Ar3Lf3Dt.png') }
  let(:money_track) { user.money_tracks.create(name: 'clothes', amount: 20) }
  let(:money_group) { MoneyGroup.create(group_id: group.id, money_track_id: money_track.id) }

  describe 'GET /index' do
    before do
      sign_in user
      get new_group_money_track_path(group)
    end
    it 'should return response status correct (ok)' do
      expect(response).to have_http_status(:ok)
    end
    it 'respons to html' do
      expect(response.content_type).to include 'text/html'
    end
  end
end
