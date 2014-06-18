addition = lambda {|a,b| a+b}
puts addition.call(5,5)

addition = lambda{|a,b|
  a+b
}
puts addition.call(5,5)

addition = lambda do |a, b|
  a+b
end
puts addition.call(5,5)

addition = lambda do |a, b|; a + b; end
puts addition.call(5, 5)