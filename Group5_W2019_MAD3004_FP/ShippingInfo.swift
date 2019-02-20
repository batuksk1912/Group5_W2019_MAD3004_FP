//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class ShippingInfo {
    var shippingId: Int
    var shippingType: String
    var shippingCost: Float
    var shippingRegionId: Int

    init(shippingId: Int, shippingType: String, shippingCost: Float, shippingRegionId: Int) {
        self.shippingId = shippingId
        self.shippingType = shippingType
        self.shippingCost = shippingCost
        self.shippingRegionId = shippingRegionId
    }
}