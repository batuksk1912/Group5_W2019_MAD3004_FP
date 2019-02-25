//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class Customer : User {
    
    private var customerName: String?
    private var address: String?
    private var email: String?
    private var creditCardInfo: String?
    private var shippingInfo: String?
    
    init(userId: String, password: String, loginStatus: String, customerName: String, address: String, email: String, creditCardInfo: String, shippingInfo: String) {
        super.init(userId: userId, password: password, loginStatus: loginStatus)
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
    }
    

    func register(userId: String, password: String, customerName: String, address: String, email: String, creditCardInfo: String, shippingInfo: String) {
        //Fill It Up
    }
    
    override func display() -> String {
        return super.display() + "Customer Name is : " + self.customerName! + "\nCustomer Address is : " + self.address! + "\nCustomer Email is : " + self.email! + "\nCustomer Credit Card Info is : " + self.creditCardInfo! + "\nCustomer Shipping Info is : " + self.shippingInfo!
    }

}

