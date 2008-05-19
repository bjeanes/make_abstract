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
    
## Gem

Tried to create a gemspec file but I have never created a gem before and I am distracted so maybe it won't work. Also first time using test-first coding. I like the concept of it, but not sure if I did the test units right. Whatever.