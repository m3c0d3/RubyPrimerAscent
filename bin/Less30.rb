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
