require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.create(name: 'Ali', email: 'ali@mail.com', password: 'password')
  end

  it 'name should not be nil' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should valid the name' do
    subject.name = 'Ali'
    expect(subject).to be_valid
  end

  describe '#create' do
    let(:user) { User.create(name: 'Alice', email: 'alice@example.com', password: 'password') }

    it 'sets the role attribute to "user"' do
      expect(user.role).to eq('user')
    end
  end
end
