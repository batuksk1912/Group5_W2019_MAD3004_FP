//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class OrderDetails : IDisplay {
   
    private var orderId: Int?
    private var productId: Int?
    private var productName: String?
    private var quantity: Int?
    private var unitCost: Float?
    private var subTotal: Float {
        var finalSubTotal:Float = 0.0
        finalSubTotal = finalSubTotal + (Float(quantity!) * unitCost!)
        return finalSubTotal
    }
    
    private var shipping: ShippingInfo?

    init(orderId: Int, productId: Int, productName: String, quantity: Int, unitCost: Float) {
        self.orderId = orderId
        self.productId = productId
        self.productName = productName
        self.quantity = quantity
        self.unitCost = unitCost
    }
    
    func calcPrice() {
        let finalPrice:Float = subTotal + shipping!.getShippingCost()
        print("Total price : " + String(finalPrice.currency()))
    }
    
    func display() -> String {
        let print1:String = "\nOrder Id is : " + String(self.orderId!) + "\nProduct Id is : " + String(self.productId!) + "\nProduct Name is : " + self.productName!
        let print2:String = "\nQuantity is : " + String(self.quantity!.unit()) + "\nPer Unit Cost is : " + String(self.unitCost!) + "\nSub Total is : " + String(self.subTotal.currency())
        
        return print1 + print2
    }
}
