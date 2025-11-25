class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    numbers = numbers.gsub("\n", ",")
    nums = numbers.split(",").map(&:to_i)
    nums.sum
  end
end
