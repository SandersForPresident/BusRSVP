require 'faker'
require 'factory_girl_rails'

FactoryGirl.define do

  factory :trip do
    name { "Bus to #{Faker::Address.city}" }
    description { Faker::Lorem.sentence }
    passenger_limit { Faker::Number.number(2) }
    association :host, factory: :user
  end

  factory :reservation do
    association :trip, factory: :trip
    association :passenger, factory: :user
  end

  factory :user do
    provider "Facebook"
    uid { Faker::Number.number(10) }
    name { Faker::Name.name }
    oauth_token { Faker::Number.number(10) }
  end
end
