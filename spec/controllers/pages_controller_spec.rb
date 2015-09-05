require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe "GET #home" do
    it "renders the home template and returns http 200" do
      get :home
      expect(response).to render_template("home")
      expect(response.status).to eq(200)
    end
  end
end
