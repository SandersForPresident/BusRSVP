class User < ActiveRecord::Base
  has_many :reservations, foreign_key: :passenger_id
  has_many :trips, through: :reservations
  has_many :trips_hosted, class_name: Trip, foreign_key: :host_id

  def self.from_facebook_omniauth(auth)
    user = User.where(uid: auth.uid).first
    unless user
      user = User.create(
      provider: auth.provider,
      uid: auth.uid,
      name: auth.info.name,
      oauth_token: auth.credentials.token)
    end
    user
  end
end
