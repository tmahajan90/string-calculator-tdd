require "minitest/autorun"
require_relative "../lib/string_calculator"

describe StringCalculator do
  before do
    @calculator = StringCalculator.new
  end

  it "returns zero for empty string" do
    _(@calculator.add("")).must_equal 0
  end

  it "returns the number for single input" do
    _(@calculator.add("1")).must_equal 1
  end

  it "returns sum for two numbers" do
    _(@calculator.add("1,5")).must_equal 6
  end

  it "handles multiple numbers" do
    _(@calculator.add("1,2,3,4")).must_equal 10
  end

  it "handles newlines as delimiters" do
    _(@calculator.add("1\n2,3")).must_equal 6
  end
end
