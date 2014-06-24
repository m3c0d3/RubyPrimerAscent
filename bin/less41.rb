module Foo
  def method_in_module
   	"The method defined in the module invoked"
  end
end

class Bar
  def initialize
    self.extend Foo
  end
end


############### no 2
module Foo
  def self.included(base)
    base.extend ClassMethods
  end
  module ClassMethods
    def guitar
      "gently weeps"
    end
  end
end

class Bar
  include Foo
end

puts Bar.guitar
