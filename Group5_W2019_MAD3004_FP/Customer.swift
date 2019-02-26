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
    
    private static var dictionaryUsers=[String:User]()

    lazy var arrayShoppingCarts: [ShoppingCart] = [ShoppingCart]()
    
    init(userId: String, password: String, loginStatus: String, customerName: String, address: String, email: String, creditCardInfo: String, shippingInfo: String) {
        super.init(userId: userId, password: password, loginStatus: loginStatus)
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
    }
    
    static func login(userId: String, password: String) {
        for (id,user) in dictionaryUsers {
            if (user.getPassword() == password && id == userId) {
                //print("You are logged in.")
                user.setLoginStatus(loginStatus: "loggedin")
            } else {
                //print("User name or password not found.")
                user.setLoginStatus(loginStatus: "notloggedin")
            }
        }
    }
        
    static func register(user: User)
    {
        if (dictionaryUsers.count == 0) {
            dictionaryUsers.updateValue(user, forKey: user.getUserId())
            print("User Id : \(user.getUserId()) created successfully.")
        } else {
            for (id,_) in dictionaryUsers {
                if (id == user.getUserId()) {
                    print("User Id : \(id) already exists.")
                } else {
                    //print("Register successfully.")
                    dictionaryUsers.updateValue(user, forKey: user.getUserId())
                    print("User Id : \(id) created successfully.")
                }
            }
        }
    }

    func setShoppingCart(shoppingCart: ShoppingCart) {
        arrayShoppingCarts.append(shoppingCart)
    }

    func displayUserCarts() -> String {
        var output = ""
        for cart in arrayShoppingCarts {
            output += cart.display()
        }
        return output
    }
    
    override func display() -> String {
        return super.display() + "Customer Name is : " + self.customerName! + "\nCustomer Address is : "
                + self.address! + "\nCustomer Email is : " + self.email! + "\nCustomer Credit Card Info is : "
                + self.creditCardInfo! + "\nCustomer Shipping Info is : " + self.shippingInfo! + self.displayUserCarts()

    }

}

