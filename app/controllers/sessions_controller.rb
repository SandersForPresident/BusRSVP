class SessionsController < ApplicationController
  def create
    user = User.from_facebook_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    puts "done"
    #redirect_to root_path
  end
end
