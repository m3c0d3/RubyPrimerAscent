# Change the last example to return the found tile from a method called search, instead. search should receive the floor plan as a parameter.
def search(floor)
	floor.each do |row|
		row.each do |tile|
			return tile if tile == "jawbreaker" || tile == "gummy"
		end
	end
end
floor = [["blank", "blank", "blank"],
         ["gummy", "blank", "blank"],
         ["blank", "blank", "blank"]]
candy = search(floor)
puts candy
