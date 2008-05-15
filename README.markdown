# Make Abstract

Usage:

    require 'make_abstract'
    
    class AbstractClass
      make_abstract
    end    
    
    class AbstractChildClass < AbstractClass
      make_abstract
    end
    
    class ChildClass < AbstractClass
    end
    
    AbstractClass.new         # will generate CantInstantiateError
    AbstractChildClass.new    # will generate CantInstantiateError
    ChildClass.new            # will create new ChildClass object