//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class User : IDisplay {
    private var userId: String?
    private var password: String?
    private var loginStatus: String?
    
    init(userId: String, password: String, loginStatus: String) {
        self.userId = userId
        self.password = password
        self.loginStatus = loginStatus
    }
    
    func display() -> String {
        return "User id is : " + self.userId! + "\n" + "User Password is : " + self.password! + "\n" + "Login Status is : " + self.loginStatus! + "\n" 
    }
    
    func verifyLogin() -> Bool {
        return true
    }
}
