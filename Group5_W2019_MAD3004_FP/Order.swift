//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class Order : IDisplay {
    
    private var orderId: Int?
    private var dateCreated:Date = Date()
    private var dateShipped:Date = Date()
    private var CustomerName: String?
    private var CustomerId: Int?
    private var status: String?
    private var shippingId: Int?
    
    private var shippingInfo : ShippingInfo?
    private var orderDetails : OrderDetails?
    
    init(orderId: Int, dateCreated: Date, dateShipped: Date, CustomerName: String, CustomerId: Int, status: String, shippingId: Int) {
        self.orderId = orderId
        self.dateCreated = dateCreated
        self.dateShipped = dateShipped
        self.CustomerName = CustomerName
        self.CustomerId = CustomerId
        self.status = status
        self.shippingId = shippingId
    }
    
    func placeOrder(shippingInfo: ShippingInfo, orderDetails: OrderDetails, status: String) {
        self.shippingInfo = shippingInfo
        self.orderDetails = orderDetails
        self.status = status
    }
    
    func display() -> String {
        let dateDisplay = "\nDate Created : " + self.dateCreated.getFormattedDate() + "\nDate Shipped : " + self.dateShipped.getFormattedDate()
        
        return "Order Id is : " + String(self.orderId!) + dateDisplay + "\nCustomer Name is : " + self.CustomerName! + "\nCustomer Id is : " + String(self.CustomerId!) + "\nStatus is : " + self.status! + "\nShipping Id is : " + String(self.shippingId!) + shippingInfo!.display() + orderDetails!.display()
    }
}
