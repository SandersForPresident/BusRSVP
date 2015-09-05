require 'faker'
require 'factory_girl_rails'

FactoryGirl.define do
  factory :user do
    provider "Facebook"
    uid { Faker::Number.number(10) }
    name { Faker::Name.name }
    oauth_token { Faker::Number.number(10) }
  end
end
