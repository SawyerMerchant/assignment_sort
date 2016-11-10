class Sort

  attr_accessor :arr

  def initialize(arr)
    @arr = arr
  end

  def bubble_sort
    switch = false
    start = 1

    until switch
      (start..@arr.length - 1).each do |item|
        if @arr[item] > @arr[item - 1]
          next
        else
          @arr[item], @arr[item - 1] = @arr[item - 1], @arr[item]
          switch = true
        end
      end
      
    end
    @arr
  end


  def insert(array, right_index, value)
    # value is the value of array[right_index + 1]
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements
    i = right_index
    while(i >= 0 && array[i] > value)
        # copy the element
        array[i+1] = array[i]
        i -= 1
    end

    # insert the actual element
    array[i+1] = value;
  end

  def insertion_sort
    i = @arr.length - 1

    i.times do |j|
      insert(@arr, j, @arr[j+1] )
    end
    @arr
  end




end
