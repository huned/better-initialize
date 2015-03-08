require 'better_initialize'

class TestBetterInitialize < Test::Unit::TestCase
  class Something
    include BetterInitialize
    attr_accessor :a, :b
  end

  def test_with_attributes
    @obj = Something.new(a: 1, b: 2)
    assert_equal(1, @obj.a)
    assert_equal(2, @obj.b)
  end

  def test_with_block
    @obj = Something.new do |obj|
      obj.a = 1
      obj.b = 2
    end
    assert_equal(1, @obj.a)
    assert_equal(2, @obj.b)
  end
end
