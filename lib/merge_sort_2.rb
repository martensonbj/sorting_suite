class MergeSort

  attr_reader :array_a, :array_b  # => nil

  def sort(elements)
    if elements.length == 1                                     # => false
      return elements
    else
    # Divide the Array into Two Smaller Arrays
      middle = elements.length / 2                              # => 3
      array_a = elements.slice(0, middle)                       # => ["z", "x", "d"]
      array_b = elements.slice(middle, elements.size - middle)  # => ["a", "c", "b", "f"]
    end
    return merge_sort(array_a, array_b)                         # => ["a", "c", "b", "f", "z", "x", "d"]
  end                                                           # => :sort

  def merge_sort(array_a, array_b)
  # Iterate through each smaller array and merge data
    new_elements = []                                               # => []
    # index_of_array_a = 0
    # index_of_array_b = 0
    while array_a.length > 0 || array_b.length > 0                  # => true, true, true, true, true, false
      # IF Length of each array > 0
      if array_a.length > 0 && array_b.length > 0                   # => true, true, true, true, false
      # Take the smallest of the two, and push it on the new array
        if array_a[0] <= array_b[0]                                 # => false, false, false, false
            new_elements << array_a.slice!(0)
        else
            new_elements << array_b.slice!(0)                       # => ["a"], ["a", "c"], ["a", "c", "b"], ["a", "c", "b", "f"]
        end                                                         # => ["a"], ["a", "c"], ["a", "c", "b"], ["a", "c", "b", "f"]
      elsif array_a.length > 0                                      # => true
        new_elements.concat array_a.slice!(0..array_a.length.pred)  # => ["a", "c", "b", "f", "z", "x", "d"]
      elsif
        new_elements.concat array_b.slice!(0..array_a.length.pred)
      else
        break
      end
    end                                                             # => nil

    return new_elements  # => ["a", "c", "b", "f", "z", "x", "d"]
  end                    # => :merge_sort
end                      # => :merge_sort

MergeSort.new.sort(["z", "x", "d", "a", "c", "b", "f"])  # => ["a", "c", "b", "f", "z", "x", "d"]
