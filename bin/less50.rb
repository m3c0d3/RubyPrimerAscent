EXAMPLE_SECRETS = ["het", "keca", "si", nil, "iel"]
def decode_all(ary)
  begin
    ary.each {|s| decode(s) }
  rescue Exception => e
    puts "Rescued" + e.to_s
  end
end

def decode(jumble)
  secret = jumble.split("").rotate(3).join("")
  announce(secret)
  secret
end

def decode_all2(ary) 
  ary.each {|s| decode(s) } rescue "it's okay, little buddy." 
end


def string_slice(*ary)
  raise ArgumentError, 'More than 5 passed in' if ary.size>5
  result = ary.collect do |e| 
    if e.length<3 
      raise IndexError, 'string is less than 3 characters long'
    else
      e[0..2]
    end
  end
  puts result
  result  
end
