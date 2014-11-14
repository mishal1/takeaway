class Dish

	attr_reader :name, :price

	# def initialize
	# 	@quantity = 0
	# end

	def create(name, price)
		@name = name
		@price = price.to_i
	end

	def change_name(name)
		@name = name
	end

	def change_price(price)
		@price = price.to_i
	end

	# def set_quantity(number)
	# 	@quantity = number
	# end

end