class User < ActiveRecord::Base
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
