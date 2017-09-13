require "minitest/autorun"

require "minitest/pride"
require_relative "call_check"

class CallTest < Minitest::Test
  
  def setup 
    @phone1 = CallCheck.new.call_898989898989
    @phone2 = CallCheck.new.call_04844011845
    @phone3 = CallCheck.new.call_8547810845
    @phone4 = CallCheck.new.call_12321
    @phone5 = CallCheck.new.call_8547810845_call 
    @phone6 = CallCheck.new.call_call_8547810845
  end

  def test_call_898989898989
    assert_equal "invalid number",@phone1
  end

  def test_call_04844011845
    assert_equal "valid number",@phone2
  end

  def test_call_8547810845
    assert_equal "valid number",@phone3
  end

  def test_call_12321
    assert_equal "invalid number",@phone4
  end

  def test_call_8547810845_call  
    assert_equal "invalid number", @phone5
  end 

  def test_call_call_8547810845  
    assert_equal "invalid number", @phone6
  end

end