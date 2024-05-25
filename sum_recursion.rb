def sum (arr)
    result = 0
    if arr == []
        result
    else
        until arr.length <= 0
          head = arr[0]
          arr.shift
          result = head + sum(arr)
        end
        result
    end
end

def max (arr)
    max_number = arr[0]
    if arr == []
        max_number
    else
        for i in (1..arr.length-1)
            if arr[i] > max_number
                max_number = arr[i]
            end
        end
        max_number
    end
end
puts max([8,7,1,3])