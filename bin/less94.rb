class Object
  def singleton_method?(method)
    (self.singleton_class.instance_methods-self.class.instance_methods).include?(method)
  end
end

foo = "A string"
def foo.shout
  puts foo.upcase
end

# shout is a singleton method.
p foo.singleton_method?(:shout)
