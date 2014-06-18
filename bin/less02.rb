def calculation(a, b, &block) # &block is an explicit (named) parameter
  block.call(a, b)
end

puts calculation(5, 5) { |a, b| a+b }

def calculation2(a, b)
  yield(a, b) #yield calls an implicit (unnamed) block
end

addition = lambda { |x, y| x+y }
puts calculation(5, 5, &addition) #like our last example &addition is
# an explicit (named) block
# -- 'yield'  can still call it!

def filter (array, block)
  array.select(&block)
end

print filter([1, 2, 3, 4], lambda { |number| number.even? })
print filter([1, 2.0, 3, 4.0], lambda { |number| number.integer? })

Filter = lambda do |array, &block|
  array.select(&block)
end

print Filter.call([1, 2, 3, 4]) { |number| number.even? }
print Filter.call([1, 3, 5, 7, 9]) { |number| number%3 == 0 }