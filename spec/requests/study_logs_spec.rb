require 'rails_helper'

RSpec.describe "StudyLogs", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/study_logs/index"
      expect(response).to have_http_status(:success)
    end
  end

end
