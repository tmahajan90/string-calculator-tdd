require "minitest/autorun"
require_relative "../lib/string_calculator"

describe StringCalculator do
  before do
    @calculator = StringCalculator.new
  end

  it "returns zero for empty string" do
    _(@calculator.add("")).must_equal 0
  end
end
