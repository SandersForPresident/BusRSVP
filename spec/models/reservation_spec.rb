require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:reservation)).to be_valid
  end

  it { should belong_to(:trip) }
  it { should belong_to(:passenger) }
end
