//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class OrderDetails : IDisplay {
   
    
    var orderId: Int?
    var productId: Int?
    var productName: String?
    var quantity: Int
    var unitCost: Float?
    var subTotal: Float

    init(orderId: Int, productId: Int, productName: String, quantity: Int, unitCost: Float, subTotal: Float) {
        self.orderId = orderId
        self.productId = productId
        self.productName = productName
        self.quantity = quantity
        self.unitCost = unitCost
        self.subTotal = subTotal
    }
    func display() -> String {
        return "\nOrderId is : " + String(self.orderId!) + "\nProductId is : " + String(self.productId!) + "\nProduct Name is : " + self.productName! + "\nQuantity is : " + String(self.quantity.unit()) + "\nPer Unit Cost is : " + String(self.unitCost!) + "\nSubTotal is : " + String(self.subTotal.currency())
    }
}
