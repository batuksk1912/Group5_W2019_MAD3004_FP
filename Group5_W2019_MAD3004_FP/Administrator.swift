//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class Administrator: User {

    var adminName: String?
    var email: String?
    var canUpdateCatalog: Bool?

    init(userId: String, password: String, loginStatus: String, adminName: String?, email: String?, canUpdateCatalog: Bool?) {
        self.adminName = adminName
        self.email = email
        self.canUpdateCatalog = canUpdateCatalog
        super.init(userId: userId, password: password, loginStatus: loginStatus)
    }

    func updateCatalog() -> Bool {
        if (self.canUpdateCatalog!) {
            return true
        } else {
            return false
        }

    }

    override func display() -> String {
        return super.display() + "Administrator name is :" + self.adminName! + "\nAdministrator E-mail is :" + self.email!
    }
}
