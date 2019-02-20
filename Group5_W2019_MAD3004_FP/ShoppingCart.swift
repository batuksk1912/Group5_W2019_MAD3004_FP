//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class ShoppingCart {
    var cartId: Int
    var productId: Int
    var quantity: Int
    var dateAdded: Date

    init(cartId: Int, productId: Int, quantity: Int, dateAdded: Date) {
        self.cartId = cartId
        self.productId = productId
        self.quantity = quantity
        self.dateAdded = dateAdded
    }
}