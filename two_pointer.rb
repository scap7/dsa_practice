class TwoPointer
  # using two pointer technique 
  # The idea is to use the two-pointer technique but for using the two-pointer technique, the array must be sorted. Once the array is sorted then we can use this approach by keeping one pointer at the beginning (left) and another at the end (right) of the array. Then check the sum of the elements at these two pointers:
  
  # If the sum equals the target, we’ve found the pair.
  # If the sum is less than the target, move the left pointer to the right to increase the sum.
  # If the sum is greater than the target, move the right pointer to the left to decrease the sum.
  
  def self.search(target, arr)
    pointer_left = 0
    pointer_right = arr.length- 1
    while pointer_left < pointer_right
      sum = arr[pointer_left] + arr[pointer_right]
      p 'sum>>>>>', sum, pointer_left, pointer_right
      return true if target === sum
      if(target < sum)
        pointer_right -=1
      else
        pointer_left +=1
      end
    end
    false
  end
end

arr = [7,5,2,8,12,21,29]
p sorted = arr.sort
p TwoPointer.search(36, sorted)