//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class Administrator {

    var adminName: String
    var email: String

    init(adminName: String, email: String) {
        //super.init(userId: String, password: String, loginStatus: String)
        self.adminName = adminName
        self.email = email
    }
}
