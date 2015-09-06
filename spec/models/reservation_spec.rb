require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:reservation)).to be_valid
  end
end
