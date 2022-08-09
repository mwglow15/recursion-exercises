def merge_sort(arr)

    if arr.length == 1
        return arr
    else
        sorted_arr_1 = merge_sort(arr.take(arr.length/2))
        sorted_arr_2 = merge_sort(arr.drop(arr.length/2))
        n = 0
        sorted =[]

        sorted_arr_1.each do |item|
            while !sorted_arr_2.empty? && item > sorted_arr_2[0]
                sorted.push(sorted_arr_2.slice!(0))
            end
            sorted.push(item)
        end
        sorted.push(sorted_arr_2) if !sorted_arr_2[0].nil?

        sorted.flatten
    end
end

p merge_sort([5,3,6,8,2,5,8,3,5,4,7,8,9,2,5,3])