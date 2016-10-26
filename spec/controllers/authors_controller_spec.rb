require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

  describe "GET #authorIndex" do
    it "returns http success" do
      get :authorIndex
      expect(response).to have_http_status(:success)
    end
  end

end
