require 'rails_helper'

RSpec.describe "StringCalculators", type: :request do
  describe "GET /new" do
    it "renders the new template" do
      get new_string_calculator_path
      expect(response).to render_template(:new)
    end

    it "assigns @result and @error as nil" do
      get new_string_calculator_path
      expect(assigns(:result)).to be_nil
      expect(assigns(:error)).to be_nil
    end
  end
end
