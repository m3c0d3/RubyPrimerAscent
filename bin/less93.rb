class Object
  def superclasses
    # your code here    
    result = []
    parent = self.superclass  
    while not parent.nil? do
    	result<<parent
    	parent=parent.superclass
    end
    result
  end
end

class Bar
end

class Foo < Bar
end

p Foo.superclasses  # should be [Bar, Object, BasicObject]

class Object
  def superclasses_sol(klass = self.superclass)
    return [] if klass.nil?
    [klass] + superclasses(klass.superclass)
  end
end

p Foo.superclasses  # should be [Bar, Object, BasicObject]
