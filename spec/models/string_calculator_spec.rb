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

    context "with negative numbers" do
      it "raises an error" do
        calculator = StringCalculator.new
        expect { calculator.add("1,-2,3") }.to raise_error("Negative numbers not allowed: -2")
      end
    end

    context "with custom delimiters" do
      it "returns the sum using custom delimiters" do
        calculator = StringCalculator.new
        expect(calculator.add("//;\n1;2")).to eq(3)
      end
    end
  end
end

