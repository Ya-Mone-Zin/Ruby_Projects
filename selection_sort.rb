def find_smallest(arr)
    smallest = arr[0]
    smallest_index = 0
    for i in (1..arr.length-1)
        if arr[i] < smallest
            smallest = arr[i]
            smallest_index = i
        end
    end
    smallest_index
end

def selection_sort(arr)
    new_arr = []
    
    for i in (0..arr.length-1)
        smallest = find_smallest(arr)
        new_arr.append(arr[smallest])
        arr.delete_at(smallest)
    end
    new_arr
end
my_arr = [20,40,30,70,10,80,90]
puts selection_sort(my_arr)  