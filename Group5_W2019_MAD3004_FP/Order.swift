//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class Order {
    var orderId: Int
    var dateCreated: Date
    var dateShipped: Date
    var CustomerName: String
    var CustomerId: Int
    var status: String
    var shippingId: Int

    init(orderId: Int, dateCreated: Date, dateShipped: Date, CustomerName: String, CustomerId: Int, status: String, shippingId: Int) {
        self.orderId = orderId
        self.dateCreated = dateCreated
        self.dateShipped = dateShipped
        self.CustomerName = CustomerName
        self.CustomerId = CustomerId
        self.status = status
        self.shippingId = shippingId
    }
}