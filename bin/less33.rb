class WaiterRobot

  def initialize(chef, tables)
    @chef = chef
    @tables = tables
    @name = "Tyler Durden"
  end
  
  def name
    @name
  end
  
  def place_order(table_number, sandwich, drink)
    order_hash = {:table=>table_number,:sandwich=>sandwich, :drink=>drink}
    
    @chef.new_order(self, order_hash)
  end
  
  def serve(order)
    # digest the chef's sloppy order instructions:
    # 1) find the table number you need to serve
    order_hash = Hash[*order]
    table = @tables[order_hash[:table]]
    # 2) call Table#serve_sandwich and Table#serve_drink
    table.serve_sandwich(order_hash[:sandwich])
    table.serve_drink(order_hash[:drink])
  end
  
end