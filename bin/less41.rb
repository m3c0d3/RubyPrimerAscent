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
