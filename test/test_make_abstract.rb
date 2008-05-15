require 'test/unit'
require 'make_abstract'
require 'test/test_classes'

class TestMakeAbstract < Test::Unit::TestCase
  def test_defines_method
    assert_respond_to(AbstractClass, :make_abstract)
    assert_respond_to(String, :make_abstract)
    assert_respond_to(Object, :make_abstract)
  end
  
  def test_instantiating_abstract_class_raises_error
    assert_raise NoMethodError do
      AbstractClass.new
    end
  end
  
  def test_instantiating_abstract_child_class_raises_error
    assert_raise NoMethodError do
      AbstractChildClass.new
    end
  end
  
  def test_instantiating_child_of_abstract_class_doesnt_raise_error
    assert_nothing_raised do
      ChildClass.new
    end
  end
end