//
//  main.swift
//  Group5_W2019_MAD3004_FP
//
//  Created by Baturay Kayatürk on 19.02.2019.
//  Copyright © 2019 LambtonCollege. All rights reserved.
//

import Foundation

let user1 = User(userId: "1", password: "12345", loginStatus: "notloggedin")
let user2 = User(userId: "2", password: "67890", loginStatus: "notloggedin")

let admin1 = Administrator(userId: "3", password: "11111", loginStatus: "notloggedin", adminName: "gury", email: "gmail", canUpdateCatalog: true)
let admin2 = Administrator(userId: "4", password: "22222", loginStatus: "notloggedin", adminName: "dani", email: "gmail", canUpdateCatalog: false)

let customer1 = Customer(userId: "5", password: "33333", loginStatus: "notloggedin", customerName: "khushi", address: "toronto", email: "yahoo", creditCardInfo: "0000", shippingInfo: "toronto")
let customer2 = Customer(userId: "6", password: "44444", loginStatus: "notloggedin", customerName: "batu", address: "north york", email: "hotmail", creditCardInfo: "0000", shippingInfo: "north york")

let manufacturer1 = Manufacturer(manufId: 1, manufName: "Apple")
let manufacturer2 = Manufacturer(manufId: 1, manufName: "Samsung")

let product1 = Product(manufId: 1, manufName: "Apple", productId: 1, productName: "iPhone", price: 1200.00, quantity: 10)
let product2 = Product(manufId: 2, manufName: "Samsung", productId: 2, productName: "Android", price: 1000.00, quantity: 6)

let shoppingcart1 = ShoppingCart(cartId: 1, productId: 1, quantity: 1, dateAdded: Date())
let shoppingcart2 = ShoppingCart(cartId: 2, productId: 2, quantity: 2, dateAdded: Date())

let order1 = Order(orderId: 1, dateCreated: Date(), dateShipped: Date(), CustomerName: "khushi", CustomerId: 5, status: "delivered", shippingId: 1)
let order2 = Order(orderId: 2, dateCreated: Date(), dateShipped: Date(), CustomerName: "dani", CustomerId: 6, status: "delivered", shippingId: 2)

let orderdetail1 = OrderDetails(orderId: 1, productId: 1, productName: "iPhone", quantity: 1, unitCost: 1200.00)
let orderdetail2 = OrderDetails(orderId: 2, productId: 2, productName: "Android", quantity: 2, unitCost: 2000.00)

let shippinginfo1 = ShippingInfo(shippingId: 1, shippingType: "express", shippingCost: 10, shippingRegionId: 1)
let shippinginfo2 = ShippingInfo(shippingId: 2, shippingType: "regular", shippingCost: 5, shippingRegionId: 2)


print("Test Login and Register")

Customer.register(user: customer1)
Customer.register(user: customer2)

if (user1.verifyLogin(id: "1", password: "12345") == true) {
    print("true")
} else {
    print("false")
}

Customer.login(userId: "6", password: "44444")
Customer.login(userId: "5", password: "33333")


print(customer1.display())
print("********************")
print(customer2.display())

print("-----------------------------------------")


print("Update Profile")

Customer.updateProfile(customer: customer1, customerName: "dani", address: "markham", email: "yandex", creditCardInfo: "1111", shippingInfo: "brazil")

print(customer1.display())

print("-----------------------------------------")

print("Setting Shopping Cart and Order")

customer1.setShoppingCart(shoppingCart: shoppingcart1)
customer2.setShoppingCart(shoppingCart: shoppingcart2)

order1.placeOrder(shippingInfo: shippinginfo1, orderDetails: orderdetail1, status: "Delivered")
order2.placeOrder(shippingInfo: shippinginfo2, orderDetails: orderdetail2, status: "Delivered")

customer1.setOrders(orders: order1)
customer2.setOrders(orders: order2)

print(customer1.display())
print("Total Price")
//orderdetail1.calcPrice()
print("********************")
print(customer2.display())
print("Total Price")
//orderdetail2.calcPrice()

