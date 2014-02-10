require './snail.rb'
require "minitest/autorun"
require "minitest/pride"
# require './testwrapper.rb'
# Create your own tests here. These are some of the methods available:
#  Test.expect(boolean, [optional] message) 
#  assert_equal(actual, expected, [optional] message)
#  Test.assert_not_equals(actual, expected, [optional] message)
class SnailTest < MiniTest::Unit::TestCase
  def test_empty_array
    assert_equal(snail([[]]), [], "empty array")
  end

  def test_1x1_array
    assert_equal(snail([[1]]), [1], "1x1 array")
  end

  def test_3x3_array
    assert_equal(snail([[1,2,3], [4,5,6], [7,8,9]]), [1,2,3,6,9,8,7,4,5], "3x3 array")
  end

  def test_4x4_array
    assert_equal(snail([[1,2,3,1],[4,5,6,4],[7,8,9,7],[7,8,9,7]]), [1,2,3,1,4,7,7,9,8,7,7,4,5,6,9,8], "4x4 array")
  end
end
