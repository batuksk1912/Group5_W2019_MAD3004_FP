//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class ShippingInfo : IDisplay {
    
    private var shippingId: Int?
    private var shippingType: String?
    private var shippingCost: Float?
    private var shippingRegionId: Int?

    init(shippingId: Int, shippingType: String, shippingCost: Float, shippingRegionId: Int) {
        self.shippingId = shippingId
        self.shippingType = shippingType
        self.shippingCost = shippingCost
        self.shippingRegionId = shippingRegionId
    }
    
    func getShippingCost() -> Float {
        return shippingCost!
    }
    
    func display() -> String {
        return "\nShippin Id is : " + String(self.shippingId!) + "\nShipping Type is : " + self.shippingType! + "\nShipping Cost is : " + String(self.shippingCost!.currency()) + "\nShipping Region Id is : " + String(self.shippingRegionId!)
    }
}
