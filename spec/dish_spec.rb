require 'dish'

describe Dish do

	let(:dish) 			{Dish.new}
	let(:create_burger) {dish.create("burger", 5)}

	it "should create a new dish" do
		create_burger
		expect(dish.name).to eq("burger")
	end

	it "should create a dish with a price" do
		create_burger
		expect(dish.price).to eq(5)
	end

	it "should be able to change name of product" do
		create_burger
		dish.change_name("cheese burger")
		expect(dish.name).to eq("cheese burger")
	end

	it "should be able to change the price of a product" do
		create_burger
		dish.change_price(4)
		expect(dish.price).to eq(4)
	end

	# it "should have a quantity of 0" do
	# 	expect(dish.quantity).to eq(0)
	# end

	# it "should set a quantity" do
		
	# end

end

#delete a dish in the take away class