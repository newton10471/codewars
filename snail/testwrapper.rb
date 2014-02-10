require 'minitest/autorun'

class Test
  class << self
    def whatever(a,b,c)
      p "hello"
    end
  #  alias_method :assert_equals, :whatever
  end
  alias_method :assert_equals, MiniTest::assert_equal
end
