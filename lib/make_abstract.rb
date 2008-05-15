module MakeAbstract
  
  # http://www.shaneharvie.com/2007/08/making-constructors-protected-in-ruby.html
  def self.included(klass)
    klass.module_eval do
       class << self 
        protected :new

        def inherited(klass)
          klass.module_eval do
             def self.new(*args); super; end
          end
        end
      end
    end
  end
end