def hash_keys(hash)
  hash.map{ |e| e[0] }
  #hash.map { |pair| pair.first }
end

def occurrences(str)
  str.downcase.scan(/\w+/).inject( Hash.new(0) ) do |acc, e| 
    acc.update(e => (acc[e]+1) )
    acc
  end
end


class Island
  def initialize(candidates)
    @ary = candidates
  end
  
  def survive?
    @ary.none?{ |e| e=='Esau'}
  end
  
  def safe?
    @ary.all?{ |e| e=='Jack'}
  end
end
