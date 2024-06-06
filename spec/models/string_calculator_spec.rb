require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe "#add" do
    context "with empty input" do
      it "returns 0" do
        calculator = StringCalculator.new
        expect(calculator.add("")).to eq(0)
      end
    end

    context "with positive numbers" do
      it "returns the sum of the numbers" do
        calculator = StringCalculator.new
        expect(calculator.add("1,2,3")).to eq(6)
      end
    end
  end
end

