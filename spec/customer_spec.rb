require 'customer'

describe Customer do

	let(:customer) {Customer.new("Mishal")}
	let(:dish)	   {double :dish, :name =>'sushi',:price => 5 }
	let(:menu)	   {double :menu, :items=> [dish]}
	let(:dish1)	   {double :dish}
	
	it "should have a name when initialized" do
		expect(customer.name).to eq("Mishal")
	end

	it "should enter mobile number" do
		customer.add_mobile_number(11111111111)
		expect(customer.mobile).to eq(11111111111)
	end

	it "should raise an error if an incorrect number is added" do
		expect{customer.add_mobile_number(0)}.to raise_error(RuntimeError)
	end

	it "should be able to change mobile number" do
		customer.add_mobile_number(11111111111)
		customer.add_mobile_number(11111111112)
		expect(customer.mobile).to eq(11111111112)
	end

	it "should have no order items when initialized" do
		expect(customer.order).to eq([])
	end

	it "choose a menu" do
		customer.select(menu)
		expect(customer.menu).to eq(menu)
	end

	it "should pick a quanitity for a certain dish" do
		customer.select(menu)
		expect(menu).to receive(:items)
		expect(dish).to receive(:set_quantity).with(2)
		customer.choose(dish, 2)
	end

	it "should pick a dish from the menu" do
		customer.select(menu)
		allow(dish).to receive(:set_quantity)
		expect(menu).to receive(:items)
		customer.choose(dish,2)
	end

	it "should have a dish in the order items" do
		customer.select(menu)
		allow(dish).to receive(:set_quantity)
		expect(menu).to receive(:items)
		customer.choose(dish,2)
		expect(customer.order).to eq([dish])
	end

	it "should raise an error if the user hasn't chosen a menu" do
		expect{customer.choose(dish,5)}.to raise_error(RuntimeError)
	end

	it "should raise an error if the dish doesn't exist" do
		customer.select(menu)
		expect{customer.choose(dish1,2)}.to raise_error(RuntimeError)
	end

	it "should be able to delete a dish from their order" do
		customer.select(menu)
		allow(dish).to receive(:set_quantity)
		expect(menu).to receive(:items)
		customer.choose(dish,2)
		customer.remove(dish)
		expect(customer.order).to eq([])
	end

	it "should be able to see total cost of an order" do
		customer.select(menu)
		allow(dish).to receive(:set_quantity)
		expect(menu).to receive(:items)
		customer.choose(dish,2)
		expect(customer.total_cost).to eq("Your total cost is 5")
	end

end

#show line item