# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'binary_search'

describe 'BinarySearch' do
  describe 'BinarySearch#integer_search' do
    it 'Should Return 5 with 1 move' do
      subject = BinarySearch.new(arr: (1..10).to_a, element: 5)
      assert_equal 'Your number is 5 with 1 moves', subject.integer_search
    end

    it 'Should Return 6 with 3 move' do
      subject = BinarySearch.new(arr: (1..10).to_a, element: 6)
      assert_equal 'Your number is 6 with 3 moves', subject.integer_search
    end

    it 'Should Return 15 with 7 move' do
      subject = BinarySearch.new(arr: (1..100).to_a, element: 15)
      assert_equal 'Your number is 15 with 5 moves', subject.integer_search
    end
  end

  describe 'BinarySearch#string_search' do
    before(:all) do
      @arr = %w[Barbie Blondie Chester Billie Myriam Nonina Yeye]
    end

    it 'Should Return Billie with 3 moves' do
      subject = BinarySearch.new(arr: @arr, element: 'Billie')
      assert_equal 'Your search took 2 moves', subject.string_search
    end

    it 'Should Return Yeye with 3 moves' do
      subject = BinarySearch.new(arr: @arr, element: 'Yeye')
      assert_equal 'Your search took 3 moves', subject.string_search
    end
  end
end
