//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class Order : IDisplay {
    
    
    var orderId: Int?
    var dateCreated:Date = Date()
    var dateShipped:Date = Date()
    var CustomerName: String?
    var CustomerId: Int?
    var status: String?
    var shippingId: Int?

    init(orderId: Int, dateCreated: Date, dateShipped: Date, CustomerName: String, CustomerId: Int, status: String, shippingId: Int) {
        self.orderId = orderId
        self.dateCreated = dateCreated
        self.dateShipped = dateShipped
        self.CustomerName = CustomerName
        self.CustomerId = CustomerId
        self.status = status
        self.shippingId = shippingId
    }
    
    func display() -> String {
        let dateDisplay = "\nDate Created : " + self.dateCreated.getForamttedDate() + "\nDate Shipped : " + self.dateShipped.getForamttedDate()
       
        return  "OrderId is : " + String(self.orderId!) + dateDisplay + "\nCustomer Name is : " + self.CustomerName! + "\nCustomerId is : " + String(self.CustomerId!) + "\nStatus is : " + self.status! + "\nShippingId is : " + String(self.shippingId!)
    }
}
