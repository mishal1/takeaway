class Dish

	attr_accessor :name, :price

	def create(name, price)
		@name = name
		@price = price
	end

	def change_name(name)
		@name = name
	end

	def change_price(price)
		@price = price
	end

end