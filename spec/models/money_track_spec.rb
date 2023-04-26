require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.create(name: 'Ali', email: 'ali@mail.com', password: 'password') }
  let(:group) { Group.create(name: 'Shopping', icon: 'https://i.imgur.com/Ar3Lf3Dt.png', user_id: user.id) }
  let(:money_track) { MoneyTrack.create(name: 'Clothes', amount: 12, user_id: user.id) }
  let(:money_group) { MoneyGroup.create(group_id: group.id, money_track_id: money_track.id) }

  describe 'Validations' do
    context 'when valid' do
      it { expect(money_track).to be_valid }
    end

    it 'valid money_group' do
      expect(money_group).to be_valid
    end

    it 'should valid name ' do
      money_track.name = nil
      expect(money_track).to_not be_valid
    end
    it 'should valid amount ' do
      money_track.amount = -10
      expect(money_track).to_not be_valid
    end
    it 'should valid amount ' do
      money_track.amount = 10
      expect(money_track).to be_valid
    end
  end
end
