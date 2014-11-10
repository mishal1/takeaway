Take Away
==========

##CRC Cards

###Dish

it should:
- create new dishes with prices
- change the name or the price of a dish

it interacts with:
- menu

###Menu

it should:
- show dishes with the prices

it interacts with:
- dish
- restaurant 

###Order

it should:
- be able to recieve customer choices
- be able to total the cost of items
- be able to receive customer details

it interacts with:
- customer
- restaurant 

###Message

it should:
- send a message to customers once placed an order

it interacts with:
- restaurant

###Customer

it should:
- should have a name
- should enter details
- should be able to see the menu
- should be able to pick an item off the menu
- should be able to see the total
- should be able to delete an item
- should be able to pay for order(optional)

it interacts with:
- restuarant
- order

###Line Item

it should:
- customers dishes and the price of those dishes
- total the price of those dishes
- send a message with the receipt


it interacts with:
- messenger
- customer

###Restaurant 

it should:
- Create a new restuarant
- Initialize the whole process
- take in orders from customers and send it to order class
- send a message once received an order
- delete a dish
- create a dish
- change the price or the name of a dish


it interacts with:
- menu
- order
- message
