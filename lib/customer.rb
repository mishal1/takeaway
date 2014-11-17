class Customer

	attr_reader :name, :mobile, :order, :cost, :menu

	def initialize(name)
		@name = name
		@order =[]
		@cost = 0
	end

	def add_mobile_number(number)
		return raise "That is not a valid phone number" if !(number.to_s.length == 11)
		@mobile = number
	end

	def select(menu)
		@menu = menu
	end

	def choose(dish, quantity)
		return raise "First choose a menu" if menu.nil?
		return raise "Dish doesn't exist" if menu.items.include?(dish) == false
		dish.set_quantity(quantity)
		menu.items.select do |item| 
			item.name == dish.name
			order << dish
		end
	end

	def remove(dish)
		@order.delete(dish)
	end

	def total_cost
		order.each {|dish| @cost += dish.price }
		"Your total cost is #{cost}"
	end

end

# can add a dish
# can remove a dish
# can change quantity of a dish
# can see total price
