# frozen_string_literal: true

# Binary Search for int & strings in array
class BinarySearch
  attr_accessor :arr, :element
  attr_reader :moves

  def initialize(arr:, element:)
    @arr = arr
    @element = element
  end

  def integer_search
    high = arr.size - 1
    low = 0
    moves = 0
    while low <= high
      mid = (low + high) / 2
      guess = arr[mid]
      moves += 1
      guess > element ? (high = mid - 1) : (low = mid + 1)

      return "Your number is #{element} with #{moves} moves" if guess == element
    end
  end
end

binario = BinarySearch.new(arr: (1..10).to_a, element: 5)
puts binario.integer_search
