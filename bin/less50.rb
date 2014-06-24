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
