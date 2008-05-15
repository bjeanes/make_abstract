class AbstractClass
  make_abstract
end

class ChildClass < AbstractClass
end

class AbstractChildClass < AbstractClass
  make_abstract
end