class BubbleSort
  attr_reader :elements

  def initialize
    @elements = elements
  end

  def sort(elements)
    if elements.length <= 2
      return elements
    end

    passes = 0
    while passes < elements.length
      previous = 0
      current = 1

      while current < elements.length
        first_element = elements[previous]
        second_element = elements[current]
        if second_element < first_element
          elements[previous] = second_element
          elements[current] = first_element
        end
        previous += 1
        current += 1
      end

      passes += 1
    end
    elements
  end
end

BubbleSort.new.sort([1, 5, 200, 14, 30])
