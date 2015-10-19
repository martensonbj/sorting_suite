class MergeSort

  attr_reader :new_array_a, :new_array_b

  def sort(elements)
    if elements.length == 1
      return elements
    else
    # Divide the Array into Two Smaller Arrays
      middle = elements.length / 2
      array_a = elements.slice(0, middle)
      array_b = elements.slice(middle, elements.size - middle)
      @new_array_a = sort(array_a)
      @new_array_b = sort(array_b)

      sorted_elements = merge(@new_array_a, @new_array_b)
      return sorted_elements
    end
  end

  def merge(new_array_a, new_array_b)
  # Iterate through each smaller array and merge data
    new_elements = []
    index_of_array_a = 0
    index_of_array_b = 0
    while index_of_array_a < @new_array_a.length && index_of_array_b < @new_array_b.length
      element_from_array_a = @new_array_a[index_of_array_a]
      element_from_array_b = @new_array_b[index_of_array_b]

      # Take the smallest of the two, and push it on the new array
      if element_from_array_a <= element_from_array_b
          new_elements << element_from_array_a
          index_of_array_a += 1
      else
          new_elements << element_from_array_b
          index_of_array_b += 1
      end
    end

      return new_elements
  end
end

MergeSort.new.sort(["z", "x", "d", "a", "c", "b", "f"])
