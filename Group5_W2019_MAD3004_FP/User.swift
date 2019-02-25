//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class User : IDisplay {
    private var userId: String? 
    private var password: String?
    private var loginStatus: String?
    
    private static var dictionaryUsers=[String:User]()

    init(userId: String, password: String, loginStatus: String) {
        self.userId = userId
        self.password = password
        self.loginStatus = loginStatus
    }
    
    func display() -> String {
        return self.userId! + " " + self.password! + " " +  self.loginStatus!
    }
    
    static func addUser(user: User)
    {
        dictionaryUsers.updateValue(user, forKey: user.userId!)
    }

    func verifyLogin(id: String, password: String) -> Bool {
        if (self.userId == id && self.password == password) {
            return true
        } else {
            return false
        }
    }
    
    func getUserId() -> String {
        return self.userId!
    }
    
    func getPassword() -> String {
        return self.password!
    }
    
    func setLoginStatus(loginStatus: String) {
        self.loginStatus = loginStatus
    }
}
