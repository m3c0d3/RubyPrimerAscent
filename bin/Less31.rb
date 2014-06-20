[1,2,3,4,5].count{ |e| e%2==0 }
def zen(array)
  array.compact.flatten.count if array.compact.flatten.index(42) == 5
end

def few2last(array)
  array.slice(-2..-1).join("|") if array.size>1
end

def few2last_solution(array)
  array.slice(-2..-1).join("|")
end
