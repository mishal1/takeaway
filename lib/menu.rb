class Menu

	attr_accessor :items

	def initialize
		@items =[]
	end

	def add(dish)
		@items << dish
	end

	def delete(dish)
		@items.delete(dish)
	end

	def display
		@items.each do |item| 
			"#{item.dish[:name]}"
		end
	end

end