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
    _(@calculator.add("1,2,3,4,5")).must_equal 15
  end

  it "handles newlines as delimiters" do
    _(@calculator.add("1\n2,3")).must_equal 6
    _(@calculator.add("1\n2\n3,4")).must_equal 10
  end

  it "supports custom delimiters" do
    _(@calculator.add("//;\n1;2")).must_equal 3
    _(@calculator.add("//|\n1|2|3")).must_equal 6
    _(@calculator.add("//@\n2@3@5")).must_equal 10
  end

  it "throws exception for negative numbers" do
    error = _ { @calculator.add("-1") }.must_raise RuntimeError
    _(error.message).must_match(/negative numbers not allowed/)
    _(error.message).must_match(/-1/)
  end

  it "shows all negatives in exception message" do
    error = _ { @calculator.add("-1,2,-3") }.must_raise RuntimeError
    _(error.message).must_match(/negative numbers not allowed/)
    _(error.message).must_match(/-1/)
    _(error.message).must_match(/-3/)
  end
end
