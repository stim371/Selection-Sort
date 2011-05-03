require 'selectsort'
require 'test/unit'

class SortTest < Test::Unit::TestCase
def test_sorted_array_comes_back_the_same
  a = Sort.new
  
  assert_equal a.mysort([1,2,3,4,5,6,7,8,9,10]), [1,2,3,4,5,6,7,8,9,10]
end

def test_one_element_array_should_come_back
  a = Sort.new
  assert_equal a.mysort([2]), [2]
end

def test_empty_returns_empty
  a = Sort.new
  emptyarr = []
  assert_equal a.mysort(emptyarr),emptyarr
end

def test_backward_array_comes_out_forward
  a = Sort.new
  assert_equal a.mysort([9,8,7,6,5,4,3,2,1]), [1,2,3,4,5,6,7,8,9]
end

end   #end of class, dont use to close method