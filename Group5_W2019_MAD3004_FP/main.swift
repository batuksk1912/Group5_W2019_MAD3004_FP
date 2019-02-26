//
//  main.swift
//  Group5_W2019_MAD3004_FP
//
//  Created by Baturay Kayatürk on 19.02.2019.
//  Copyright © 2019 LambtonCollege. All rights reserved.
//

import Foundation

let user1 = User(userId: "1", password: "34", loginStatus: "true")

let admin = Administrator(userId: "2", password: "345", loginStatus: "true", adminName: "gury", email: "gmail", canUpdateCatalog: false)
let cust1 = Customer(userId: "3", password: "897", loginStatus: "true", customerName: "khushi", address: "kkr", email: "yahoo", creditCardInfo: "12dfs", shippingInfo: "toronto")

Customer.register(user: cust1)

Customer.login(userId: "3", password: "897")

print("Test Login and Register")

print(cust1.display())


let shoppingcart1 = ShoppingCart(cartId: 1, productId: 2, quantity: 3, dateAdded: Date())

cust1.setShoppingCart(shoppingCart: shoppingcart1)

print(cust1.display())


/*
let order1 = Order(orderId: 1, dateCreated: Date(), dateShipped: Date(), CustomerName: "gury", CustomerId: 123, status: "delivered", shippingId: 12378)



let orderdetail1 = OrderDetails(orderId: 1, productId: 234, productName: "laptop", quantity: 2, unitCost: 234.56, subTotal: 34789)

let shippinginfo1 = ShippingInfo(shippingId: 1, shippingType: "dgh", shippingCost: 123, shippingRegionId: 678)


print(shoppingcart1.display())

print(shippinginfo1.display())
print(orderdetail1.display())

print(order1.display())
print(cstmr.display())

print(user1.display())
print(admin.display())
*/
