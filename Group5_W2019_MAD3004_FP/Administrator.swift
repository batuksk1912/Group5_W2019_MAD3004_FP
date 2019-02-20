//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class Administrator: User {

    var adminName: String
    var email: String

    init(userId: String?, password: String?, loginStatus: String?, adminName: String, email: String) {
        self.adminName = adminName
        self.email = email
        super.init(userId: userId, password: password, loginStatus: loginStatus)
    }
}
