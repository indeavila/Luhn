module Luhn
  def self.is_valid?(number)
    nums = []
    digits = number.to_s.split('').map! do |x|
      x.to_i
    end
    digits.reverse.each_with_index do |n, index|
      if index % 2 != 0
        double = n * 2
        nums.push(double)
      else
        nums.push(n)
      end
    end
    nums.map! do |x|
      if x >= 10
        x - 9
      else
        x
      end
    end
    add_all = nums.sum
    return add_all % 10 == 0
  end
end