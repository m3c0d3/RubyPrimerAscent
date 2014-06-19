# compute([[4, 8], [15, 16]])

def compute(ary)
  if nil != ary
    ary.map do |a|  
      if(a.length==1)
        a[0]
      else
        b,c=a
        b+c
      end
    end
  else
    ary
  end
end

# vs
def compute2(ary)
  return nil unless ary
  ary.map { |(a, b)| !b.nil? ? a + b : a }
end

first, *middle, last = [42, 43, 44, 45, 46, 47]

def median(*list)
  return nil if list.empty?
  sorted = list.sort
  if ((list.length%2)==1)
    sorted[list.length/2]
  else
    (sorted[list.length/2-1]+sorted[list.length/2])/2.0
  end
end
