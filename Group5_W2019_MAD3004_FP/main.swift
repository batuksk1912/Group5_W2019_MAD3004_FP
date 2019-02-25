//
//  main.swift
//  Group5_W2019_MAD3004_FP
//
//  Created by Baturay Kayatürk on 19.02.2019.
//  Copyright © 2019 LambtonCollege. All rights reserved.
//

import Foundation

let user1 = User(userId: "1", password: "34", loginStatus: "true")

let customer1 = Customer(userId: "1", password: "38", loginStatus: "defualt", customerName: "Batu", address: "137 Woody Vine", email: "bk@gmail.com", creditCardInfo: "4543", shippingInfo: "yes")

User.addUser(user: customer1)

print(customer1.display())


print(user1.display())

if (user1.verifyLogin(id: "1",password: "39") == true) {
    user1.setLoginStatus(loginStatus: "logged in")
} else {
    user1.setLoginStatus(loginStatus: "not logged in")
}

print(user1.display())
