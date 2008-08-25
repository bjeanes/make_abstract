require 'lib/make_abstract'

class Object
  class << self
    def abstract
      self.class_eval do
        include MakeAbstract
      end
    end
  end
end