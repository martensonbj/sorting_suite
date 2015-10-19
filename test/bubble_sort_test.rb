gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort'

class BubbleTest < Minitest::Test

  def test_it_exists
    bubble_sort = BubbleSort.new
    assert bubble_sort
  end

  def test_array_has_more_than_two_numbers
    sorter = BubbleSort.new
    assert @elements.length > 2
  end

  def test_it_sorts
    sorter = BubbleSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_it_sorts_small_arrays
    sorter = BubbleSort.new
    assert_equal [1, 3, 4], sorter.sort([4, 3, 1])
  end

  def test_it_sorts_large_arrays
    sorter = BubbleSort.new
    assert_equal [1,5,7,8,9,23,100], sorter.sort([1,7,5,8,9,23,100])
  end

  def test_it_sorts_string_arrays
    sorter = BubbleSort.new
    assert_equal ["brenna", "october", "zebras", "zzz"], sorter.sort(["zzz", "october", "brenna", "zebras"])
  end

  def test_it_sorts_integer_arrays
    sorter = BubbleSort.new
    assert_equal [2, 7, 15, 45, 50000], sorter.sort([7, 50000, 45, 15, 2])
  end


end
