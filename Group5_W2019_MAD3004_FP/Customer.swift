//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class Customer: User {
    var customerName: String
    var address: String
    var email: String
    var creditCardInfo: String
    var shippingInfo: String
    var accountBalance: Float

    init(userId: String, password: String, loginStatus: String, registerDate: Date, customerName: String, address: String, email: String, creditCardInfo: String, shippingInfo: String, accountBalance: Float) {
        super.init(userId: userId, password: password, loginStatus: loginStatus, registerDate: registerDate)
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
        self.accountBalance = accountBalance
    }
}