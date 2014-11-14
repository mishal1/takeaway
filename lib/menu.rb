class Menu
	attr_reader :items

	def initialize
		@items =[]
	end

	def add(dish)
		@items << dish
	end

	def delete(dish)
		@items.delete(dish)
	end

	def show
		items
	end
end