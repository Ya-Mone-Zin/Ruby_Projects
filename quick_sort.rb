def quicksort(array)
    pivot = []
     if array.length < 2
         return array
     else
         pivot.push(array[0])
         less_arr = []
         greater_arr = []
         for i in (1..array.length-1)
             if array[i] <= pivot[0]
                 less_arr.append(array[i])
             else
                 greater_arr.append(array[i])
             end
         end
         return quicksort(less_arr) + pivot + quicksort(greater_arr)
     end
 
 end
 pp quicksort([5,2,1,3,9,8])