require 'faker'
require 'factory_girl_rails'

FactoryGirl.define do

  factory :trip do
    passenger_limit { Faker::Number.number(2) }
  end

  factory :reservation

  factory :user do
    provider "Facebook"
    uid { Faker::Number.number(10) }
    name { Faker::Name.name }
    oauth_token { Faker::Number.number(10) }
  end
end
