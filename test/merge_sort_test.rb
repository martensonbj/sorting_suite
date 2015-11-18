gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merge_sort_2'

class MergeTest < Minitest::Test

  def test_it_exists
    merge_sort = MergeSort.new
    assert merge_sort
  end

  def test_array_has_more_than_two_numbers
    skip
    sorter = MergeSort.new
    binding.pry

    sorter.sort(["a", "b"])
    assert @elements.length > 2
  end

  def test_it_sorts
    sorter = MergeSort.new
    ary = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], sorter.sort(ary)
  end

  def test_it_sorts_small_arrays
    sorter = MergeSort.new
    binding.pry
    assert_equal [1, 3, 4], sorter.sort([4, 3, 1])
  end

  def test_it_sorts_large_arrays
    sorter = MergeSort.new
    assert_equal [1,5,7,8,9,23,100], sorter.sort([1,7,5,8,9,23,100])
  end

  def test_it_sorts_string_arrays
    sorter = MergeSort.new
    assert_equal ["brenna", "october", "zebras", "zzz"], sorter.sort(["zzz", "october", "brenna", "zebras"])
  end
end
