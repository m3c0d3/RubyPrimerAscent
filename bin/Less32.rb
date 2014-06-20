class Stack
  def initialize(size)
    @store = Array.new
    @size = size
    @top = -1
  end
  
  def pop
    if empty?
      nil
    else
      @top = @top.pred
      @store.delete_at(@top.succ)      
    end
  end
  
  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end
  
  def size
    @size
  end
  
  def look
    @store[@top]
  end
  
  private
  
  def full?
    @top == @size-1
  end
  
  def empty?
    @top == -1
  end
end
