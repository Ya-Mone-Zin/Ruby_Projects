def bubble_sort(array)
    array.each do
       array.each_with_index do |value, index|
          break if index == (array.length - 1) 
              if value > array[index+1]
                array[index], array[index+1] =       
                     array[index+1], array[index]
              end
          end 
      end
    return array
  end
  pp bubble_sort([4,3,5,2,1]) 