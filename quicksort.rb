class Quicksort
  def self.sort(arr)
    length = arr.length
    if arr.length == 1 || arr.length == 0
      return arr 
    end
  
    # finding pivot point

    mid_index = (arr.length - 1)/2
    pivot_point = arr[mid_index]
    arr1 = []
    arr2 = []
    arr.length.times do |i|
      next if i == mid_index
      if arr[i] >= pivot_point
        arr1.push(arr[i])
      else
        arr2.push(arr[i])
      end
    end
    res1 = Quicksort.sort(arr1)

    res2 = Quicksort.sort(arr2)

    result = res1 + [pivot_point] + res2   

    result
  end
end
