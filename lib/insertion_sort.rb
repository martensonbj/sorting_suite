class InsertionSort
  def sort(elements)  #d, 0
    elements.each_with_index do |element, i|       # => ["d", "b", "a", "c"]
      pointer = i - 1                              # => -1, 0, 1, 2
      while pointer >= 0                           # => false, true, false, true, true, false, true, true
        break if elements[pointer] <= element      # => false, false, false, false, true
        elements[pointer + 1] = elements[pointer]  # => "d", "d", "b", "d"
        pointer -= 1                               # => -1, 0, -1, 1
      end                                          # => nil, nil, nil, nil
      elements[pointer + 1] = element              # => "d", "b", "a", "c"
    end                                            # => ["a", "b", "c", "d"]
  end                                              # => :sort
end                                                # => :sort

InsertionSort.new.sort(["d", "b", "a", "c"])  # => ["a", "b", "c", "d"]
