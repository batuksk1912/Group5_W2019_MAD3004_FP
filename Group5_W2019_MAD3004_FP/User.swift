//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class User {
    var userId: String
    var password: String
    var loginStatus: String
    var registerDate: Date

    init(userId: String, password: String, loginStatus: String, registerDate: Date) {
        self.userId = userId
        self.password = password
        self.loginStatus = loginStatus
        self.registerDate = registerDate
    }


}