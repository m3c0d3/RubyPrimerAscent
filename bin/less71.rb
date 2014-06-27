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

class Order
  GIFT_ITEMS = [Item.new(:big_white_tshirt), Item.new(:awesome_stickers)]
  OUT_OF_STOCK_ITEMS = [Item.new(:ssd_harddisk)]

  def initialize(order)
    @order = order || []        
  end
  
  def final_order
    # fix this method to get the tests to pass.
    @order-OUT_OF_STOCK_ITEMS|GIFT_ITEMS
  end
end

customer_order = Order.new([Item.new(:fancy_bag),Item.new(:ssd_harddisk)])

p customer_order.final_order
