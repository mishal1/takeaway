class Customer

	attr_reader :name, :mobile, :order, :cost

	def initialize(name)
		@name = name
		@order =[]
		@cost = 0
	end

	def add_mobile_number(number)
		return raise "That is not a valid phone number" if !(number.to_s.length == 11)
		@mobile = number
	end

	def choose(dish)
		@order << dish
	end

	def total_cost
		order.each do |dish|
			@cost += dish.price
		end
		"Your total cost is #{cost}"
	end

end