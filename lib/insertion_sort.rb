class InsertionSort
  def sort(elements)  #d, 0
    elements.each_with_index do |element, i|
      pointer = i - 1
      while pointer >= 0
        break if elements[pointer] <= element
        elements[pointer + 1] = elements[pointer]
        pointer -= 1
      end
      elements[pointer + 1] = element
    end
  end
end

InsertionSort.new.sort(["d", "b", "a", "c"])
