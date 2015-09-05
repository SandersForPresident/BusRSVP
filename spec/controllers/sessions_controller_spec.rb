require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe "GET #create" do
    it "sets session[:user_id] as user_id" do
    end

    it "redirects to root_url" do
    end
  end

  describe "GET #destroy" do
    it "sets session[:user_id] as nil" do
      get :destroy
      expect(session[:user_id]).to eq(nil)
    end

    it "redirects to root_url" do
      get :destroy
      expect(response).to redirect_to(root_url)
    end
  end
end
