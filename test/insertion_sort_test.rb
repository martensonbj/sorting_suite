gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/insertion_sort'

class InsertionTest < Minitest::Test

  def test_it_exists
    insertion_sort = InsertionSort.new
    assert insertion_sort
  end

  def test_it_sorts
    sorter = InsertionSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_will_return_array_if_less_than_2_numbers
    sorter = InsertionSort.new
    assert_equal [1,2], [1,2]
  end

  def test_it_sorts_small_arrays
    sorter = InsertionSort.new
    assert_equal [1, 3, 4], sorter.sort([4, 3, 1])
  end

  def test_it_sorts_large_arrays
    sorter = InsertionSort.new
    assert_equal [1,5,7,8,9,23,100], sorter.sort([1,7,5,8,9,23,100])
  end

  def test_it_sorts_string_arrays
    sorter = InsertionSort.new
    assert_equal ["brenna", "october", "zebras", "zzz"], sorter.sort(["zzz", "october", "brenna", "zebras"])
  end


end
