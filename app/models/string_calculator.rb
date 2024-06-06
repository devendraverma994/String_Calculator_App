class StringCalculator < ApplicationRecord
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ','
    num_list = numbers.split(delimiter)

    result_array = num_list.flat_map do |element|
      element.split('"').flat_map do |part|
        part.split(/\\n|;/)
      end.map(&:to_i)
    end

    negatives = result_array.select { |n| n < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    result_array.sum
  end
end
