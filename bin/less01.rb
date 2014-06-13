def calculation (a, b, operation)
  operation.call(a, b)
end

puts calculation(5, 6, lambda { |a, b| a+b })
puts calculation(5, 6, lambda { |a, b| a-b })

def calculation2(a, b)
  yield(a, b)
end

puts calculation2(5, 6) { |a, b| a+b }
puts calculation2(5, 6) { |a, b| a-b }

def foo
  yield
end

foo do
  puts 'sometimes shortcuts do get you there faster'
end

def foo2
  puts yield
  puts method(:foo2)
  #uncomment the following line and see what happens
  #puts method(:yield)
end

foo2 { 'I expect to be heard' }

def foo3
  yield if block_given?
end

foo3

require 'benchmark'
def calculation_withx                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           _explicit_block_passing(a,b,operation)
  operation.call(a,b)
end