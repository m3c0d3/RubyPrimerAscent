[1,2,3,4,5].count{ |e| e%2==0 }
def zen(array)
  array.compact.flatten.count if array.compact.flatten.index(42) == 5
end
