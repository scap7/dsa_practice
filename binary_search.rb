class BinarySearch
# changing the array itself ==>

    # def self.search(target, arr)
    #   # array is sorted -- assuming -- increasing order
    #   return false if target < arr.first || target > arr.last 
    #   # binding.irb
    #   # arr = arr1
    #   while arr.length > 0
    #     mid_index = arr.length / 2;
    #     p arr , '>>>>>>>>>>>>', mid_index
    #     # mid_el = arr[mid_index]
    #     # return [mid_index, mid_el]
    #     # mid_index = 2
    #     mid_el = arr[mid_index]
    #     return true if target == mid_el
    #     # i am actually changing array here 
    #     if target < mid_el
    #       arr = arr[0..mid_index]
    #     elsif target > mid_el
    #       arr = arr[mid_index..-1]
    #     end
    #   end
    # end

  # not changing the array so here i can also return the index of target 
    def self.search(target, arr, start_index = nil , end_index = nil)
      left = start_index || 0 
      right = end_index || arr.length - 1
      while left <= right
        mid = ( left + right ) / 2 ;
        return mid if target === arr[mid]
        if target > arr[mid]
          left = mid + 1 ;
        else 
          right = mid -1 ;
        end
      end
      return false
    end

end

# arr = [1,5,7,11,14,15]
# p 'return', BinarySearch.search(55, arr)
