def awkward_sheep
  sheep = Class.new do
  def speak
    "Bah."
  end
end # create a class here with a method 'speak'
end

module Fence
  # create your class here
  Sheep = Class.new do
    def speak
      "Bah."
    end
  end
end

def call_sheep
  # create a new sheep and make it talk!
  Fence::Sheep.new.speak
end
