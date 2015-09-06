require 'rails_helper'

RSpec.describe Trip, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:trip)).to be_valid
  end
end
