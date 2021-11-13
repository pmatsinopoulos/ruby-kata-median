# frozen_string_literal: true

class Median
  def initialize(array: [])
    self.array = array
  end

  def add(value)
    if array.length.zero?
      array.push(value)
      return
    end

    median_index = [array.length / 2 - 1, 0].max
    greater_index = if array[median_index] < value
                      array[median_index..].index { |element| element > value }
                    else
                      array[0..median_index].rindex { |element| element > value }
                    end
    array.insert(median_index + greater_index, value)
  end

  def value
    return nil if array.length.zero?

    half_length = array.length / 2
    if (array.length % 2).zero?
      (array[half_length] + array[half_length - 1]) / 2.0
    else
      array[half_length]
    end
  end

  private

  attr_accessor :array, :median, :median_index
end
