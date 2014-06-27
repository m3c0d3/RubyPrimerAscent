class FibonacciNumbers
	NUMBERS = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
  
  # all your code goes here
  def each
    NUMBERS.each{|e| yield e}
  end
  include Enumerable
end

f = FibonacciNumbers.new
if f.respond_to?(:map)
  squares = f.map {|number| number * number }
	puts "The squares of the fibonacci numbers are #{squares}"
else
  puts "I'll reveal the squares to you once you pass the tests."
end

