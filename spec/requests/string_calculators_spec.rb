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

  describe "POST /create" do
    context "with valid input" do
      it "redirects to new_string_calculator_path with result" do
        post string_calculators_path, params: { calculator: { numbers: "1,2,3" } }
        expect(response).to redirect_to(new_string_calculator_path(result: 6))
      end
    end
  end
end
