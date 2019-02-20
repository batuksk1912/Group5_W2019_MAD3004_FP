//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class Administrator: User {

    var adminName: String
    var email: String

    init(adminName: String, email: String) {
        super.init(userId: <#T##String##Swift.String#>, password: <#T##String##Swift.String#>, loginStatus: <#T##String##Swift.String#>, registerDate: <#T##Date##Foundation.Date#>)
        self.adminName = adminName
        self.email = email
    }
}