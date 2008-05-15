require 'lib/make_abstract'

class Object
  class << self
    def make_abstract
      self.class_eval do
        include MakeAbstract
      end
    end
  end
end