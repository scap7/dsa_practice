require './quicksort.rb'
require './binary_search.rb'
class Test
  attr_accessor :array
  def initialize(array)
    @array = array
  end

  def target_exists(number)
    # sorting the array
    sorted_arr = Quicksort.sort(array)
    e_index = sorted_arr.length - 1
    # p 'sorted_arr', sorted_arr
    sorted_arr.each_with_index do |e, i|
      compliment = number - e
      s_index = i + 1;
      compliment_index = BinarySearch.search(compliment, sorted_arr, s_index, e_index)
      return [e , sorted_arr[compliment_index] ] if compliment_index 
    end
    false
  end
end
arr= [8,9,4,7,5,8,1,2]
p Test.new(arr).target_exists(13) 

