require 'pry'
class MergeSort

  attr_reader :array_a, :array_b

  def sort(elements)
    if elements.length == 1
      return elements
    else
    # Divide the Array into Two Smaller Arrays
      middle = elements.length / 2
      array_a = elements.slice(0, middle)
      array_b = elements.slice(middle, elements.size - middle)
    end
    return merge_sort(array_a, array_b)
  end

  def merge_sort(array_a, array_b)
    binding.pry
  # Iterate through each smaller array and merge data
    new_elements = []
    # index_of_array_a = 0
    # index_of_array_b = 0
    while array_a.length > 0 || array_b.length > 0
      # IF Length of each array > 0
      if array_a.length > 0 && array_b.length > 0
      # Take the smallest of the two, and push it on the new array
        if array_a[0] <= array_b[0]
            new_elements << array_a.slice!(0)
        else
            new_elements << array_b.slice!(0)
        end
      elsif array_a.length > 0
        new_elements.concat array_a.slice!(0..array_a.length.pred)
      elsif
        new_elements.concat array_b.slice!(0..array_a.length.pred)
      else
        break
      end
    end

    return new_elements
  end
end

MergeSort.new.sort(["z", "x", "d", "a", "c", "b", "f"])
