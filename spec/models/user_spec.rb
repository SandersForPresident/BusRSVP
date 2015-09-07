require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it { should have_many(:trips_hosted) }
  it { should have_many(:reservations) }
  it { should have_many(:trips) }
end
