require "menu"

describe Menu do

	let(:menu) {Menu.new}
	let(:dish) {Dish.new}
	
	it "should start with no dishes when initialized" do
		expect(menu.items).to eq([])
	end

	it "should be able to add a dish to the menu" do
		menu.add(dish)
		expect(menu.items).to eq([dish])
	end

	it "should be able to delete a dish" do
		menu.add(dish)
		menu.delete(dish)
		expect(menu.items).to eq([])
	end

end

#it can check if an order exists