class BubbleSort
  def self.sort(arr)
    arr.length.times do |m|
      (arr.length - 1 -m).times do |i|
        if arr[i] > arr[i+1]
          temp = arr[i+1]
          arr[i+1] = arr[i]
          arr[i] = temp
        end
      end
    end
    arr
  end
end
arr = [12,45,65,999,30]
p BubbleSort.sort(arr) == arr.sort