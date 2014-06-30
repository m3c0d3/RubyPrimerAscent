=begin
Here is an exercise that you can solve using the class method. 
I have a couple of dishes - Soup, IceCream and ChineseGreenBeans (yum!). 
Objects of these classes can be added to the DeliveryTray.
The DeliveryTray has to keep track of the number of dish of each type and suggest how many dishes 
it needs to carry.
=end
class Dish
end

class Soup < Dish
end

class IceCream < Dish
end

class ChineseGreenBeans < Dish
end

class DeliveryTray
  DISH_BOWL_MAPPING = { 
    Soup => "soup bowl",
    IceCream => "ice cream bowl",
    ChineseGreenBeans => "serving plate"
  }
  def initialize
  	@dishes_needed = Hash.new(0)
  end
  def add(dish)
  	@dishes_needed[dish.class]=@dishes_needed[dish.class]+1
  end
  
  def dishes_needed
  	if @dishes_needed.empty?
	  "None."
	else
	  result = ""
	  p @dishes_needed
	  @dishes_needed.each do |dish, counter|
	    if result.empty? 
	  	  result<<"#{counter} #{DISH_BOWL_MAPPING[dish]}"
	  	else
	  	  result<<", #{counter} #{DISH_BOWL_MAPPING[dish]}"
	  	end
	  end
	  result
	end
  end
end  

d = DeliveryTray.new
d.add Soup.new 
d.add Soup.new
d.add IceCream.new

puts d.dishes_needed # should be "2 soup bowl, 1 ice cream bowl"
