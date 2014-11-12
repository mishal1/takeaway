require 'customer'

describe Customer do

	let(:customer) {Customer.new("Mishal")}
	let(:dish)	   {double :dish, :price => 5 }
	
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

	it "should be able to choose an item off the menu" do
		customer.choose(dish)
		expect(customer.order).to eq([dish])
	end

	it "should be able to see total cost of an order" do
		customer.choose(dish)
		expect(customer.total_cost).to eq("Your total cost is 5")
	end
end