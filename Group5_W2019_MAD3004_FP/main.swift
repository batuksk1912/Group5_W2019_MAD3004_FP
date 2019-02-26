//
//  main.swift
//  Group5_W2019_MAD3004_FP
//
//  Created by Baturay Kayatürk on 19.02.2019.
//  Copyright © 2019 LambtonCollege. All rights reserved.
//

import Foundation


//create 2 user object
let user1 = User(userId: "1", password: "12345", loginStatus: "notloggedin")
let user2 = User(userId: "2", password: "67890", loginStatus: "notloggedin")

//create 2 administrator object
let admin1 = Administrator(userId: "3", password: "11111", loginStatus: "notloggedin", adminName: "gury", email: "er@gmail.com", canUpdateCatalog: true)
let admin2 = Administrator(userId: "4", password: "22222", loginStatus: "notloggedin", adminName: "dani", email: "dt@gmail.com", canUpdateCatalog: false)

print("//Administrator Check//")

print("Check if admin1 is a Admin!")
if (admin1.canUpdateCatalog == true) {
    print("This user is a admin.")
} else {
    print("Ordinary user.")
}

print("Check if admin2 is a Admin!")
if (admin2.canUpdateCatalog == true) {
    print("This user is a admin.")
} else {
    print("Ordinary user.")
}
print("********************")

//create 2 customer object
let customer1 = Customer(userId: "5", password: "33333", loginStatus: "notloggedin", customerName: "khushi", address: "toronto", email: "yahoo", creditCardInfo: "0000", shippingInfo: "toronto")
let customer2 = Customer(userId: "6", password: "44444", loginStatus: "notloggedin", customerName: "batu", address: "north york", email: "hotmail", creditCardInfo: "0000", shippingInfo: "north york")

//create manufacturer objects
let manufacturer1 = Manufacturer(manufId: 1, manufName: "Apple")
let manufacturer2 = Manufacturer(manufId: 1, manufName: "Samsung")

//create product objects
let product1 = Product(manufId: 1, manufName: "Apple", productId: 1, productName: "iPhone", price: 1200.00, quantity: 10)
let product2 = Product(manufId: 2, manufName: "Samsung", productId: 2, productName: "Android", price: 1000.00, quantity: 6)

//creating order1 and details and shopping cart's
let shoppingcart1 = ShoppingCart(cartId: 1, productId: 1, quantity: 1, dateAdded: Date())
let order1 = Order(orderId: 1, dateCreated: Date(), dateShipped: Date(), CustomerName: "dani", CustomerId: 5, status: "delivered", shippingId: 1)
let orderdetail1 = OrderDetails(orderId: 1, productId: 1, productName: "iPhone", quantity: 1, unitCost: 1200.00)
let shippinginfo1 = ShippingInfo(shippingId: 1, shippingType: "express", shippingCost: 10, shippingRegionId: 1)

//creating order2 and details and shopping cart's
let shoppingcart2 = ShoppingCart(cartId: 2, productId: 2, quantity: 2, dateAdded: Date())
let order2 = Order(orderId: 2, dateCreated: Date(), dateShipped: Date(), CustomerName: "batu", CustomerId: 6, status: "delivered", shippingId: 2)
let orderdetail2 = OrderDetails(orderId: 2, productId: 2, productName: "Android", quantity: 2, unitCost: 2000.00)
let shippinginfo2 = ShippingInfo(shippingId: 2, shippingType: "regular", shippingCost: 5, shippingRegionId: 2)

print("---Test Login and Register---")

Customer.register(user: customer1)
Customer.register(user: customer2)

if (customer1.verifyLogin(id: "5", password: "3333") == true) {
    Customer.login(userId: "5", password: "3333")
} else {
    print("Username or Password Wrong!")
}

if (customer2.verifyLogin(id: "6", password: "44444") == true) {
    Customer.login(userId: "6", password: "44444")
} else {
    print("Username or Password Wrong!")
}

print(customer1.display())
print("********************")
print(customer2.display())

print("-----------------------------------------")


print("^^^Update Profile^^^")

Customer.updateProfile(customer: customer1, customerName: "dani", address: "markham", email: "yandex", creditCardInfo: "1111", shippingInfo: "brazil")

print(customer1.display())

print("-----------------------------------------")

print("Setting Shopping Cart and Order")

print("Fill sample Shopping Cart with Products and View Details.")

// Adding product to Cart
shoppingcart1.addCartItem(products: product1)

// Assign a existing cart to customer1
print("Set Shopping Carts to User")
customer1.setShoppingCart(shoppingCart: shoppingcart1)

//create an order
order1.placeOrder(shippingInfo: shippinginfo1, orderDetails: orderdetail1, status: "Waiting Delivery")

//assign it to customer1
customer1.setOrders(orders: order1)

//print cart details
shoppingcart1.viewCartDetails()

//print customer1 details
print(customer1.display())
print("---Total Price---")
//calculates the shipping cost
orderdetail1.calcPrice(shippingCost: shippinginfo1.getShippingCost())
print("********************")


// Adding product 2 to Cart2
shoppingcart2.addCartItem(products: product2)

print("-----------------------------------")
shoppingcart2.viewCartDetails()
print("**************************************")

print("Set Shopping Carts to User")
customer2.setShoppingCart(shoppingCart: shoppingcart2)

order2.placeOrder(shippingInfo: shippinginfo2, orderDetails: orderdetail2, status: "Waiting Delivery")

customer2.setOrders(orders: order2)

print(customer2.display())
print("---Total Price---")
orderdetail2.calcPrice(shippingCost: shippinginfo2.getShippingCost())

