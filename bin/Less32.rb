#Modify the above example to make the Stack class statically sized. push and pop should return nil if the stack is overflowing or underflowing respectively. Implement private predicate methods full? and empty? and public method size that returns the length of the stack, and look that returns the value on the top of the stack. 
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


class Queue
  def initialize(size)
    @store = Array.new(size)
    @size = size
    @head = -1
    @tail = 0  
  end
  
  def dequeue
    #p self
    if empty?
      nil
    else
      @head = @head.pred
      @store.delete_at(@head.succ)
    end
  end
  
  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @head = @head.succ
      @store.unshift(element)
      self
    end
  end
  
  def size
    @size
  end
  
  private
  
  def full?
    @size == @head.succ
  end
  
  def empty?
    @head == -1
  end
end
