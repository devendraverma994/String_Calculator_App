class StringCalculator < ApplicationRecord
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ','
    num_list = numbers.split(delimiter)
    num_list.map(&:to_i).sum
  end
end
