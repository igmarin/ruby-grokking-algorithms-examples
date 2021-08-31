# frozen_string_literal: true

# Binary Search for int & strings in array
class BinarySearch
  attr_accessor :arr, :element
  attr_reader :moves

  def initialize(arr:, element:)
    @arr = arr.sort
    @element = element
  end

  def string_search
    "Your search took #{search[:moves]} moves"
  end

  def integer_search
    moves, element = search.values
    "Your number is #{element} with #{moves} moves"
  end

  private

  def search
    high = arr.size - 1
    low = 0
    moves = 0
    while low <= high
      mid = (low + high) / 2
      guess = arr[mid]
      moves += 1
      guess > element ? (high = mid - 1) : (low = mid + 1)

      return { moves: moves, element: element } if guess == element
    end
  end
end
