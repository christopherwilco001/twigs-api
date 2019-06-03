require 'rails_helper'

RSpec.describe "Twigs", type: :request do
  describe "GET /twigs" do
    it "works! (now write some real specs)" do
      get twigs_path
      expect(response).to have_http_status(200)
    end
  end
end
