require 'test/unit'
require 'make_abstract'

class AbstractClass
  make_abstract
end

class ChildClass < AbstractClass
end

class AbstractChildClass < AbstractClass
  make_abstract
end

class TestMakeAbstract < Test::Unit::TestCase
  def test_defines_method
    assert_respond_to(AbstractClass, :make_abstract)
    assert_respond_to(String, :make_abstract)
    assert_respond_to(Object, :make_abstract)
  end
  
  def test_instantiating_abstract_class_raises_error
    assert_raise CantInstantiateError do
      AbstractClass.new
    end
  end
  
  def test_instantiating_abstract_child_class_raises_error
    assert_raise CantInstantiateError do
      AbstractChildClass.new
    end
  end
  
  def test_calling_invalid_method_still_raises_no_method_error
    assert_raise NoMethodError do
      AbstractClass.i_am_an_invalid_method_that_doesnt_exist!
    end
  end
  
  def test_instantiating_child_of_abstract_class_doesnt_raise_error
    assert_nothing_raised do
      ChildClass.new
    end
  end
end