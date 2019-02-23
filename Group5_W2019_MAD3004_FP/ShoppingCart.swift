//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class ShoppingCart :IDisplay {
   
    
    var cartId: Int?
    var productId: Int?
    var quantity: Int
    var dateAdded: Date = Date()

    init(cartId: Int, productId: Int, quantity: Int, dateAdded: Date) {
        self.cartId = cartId
        self.productId = productId
        self.quantity = quantity
        self.dateAdded = dateAdded
    }
    func display() -> String {
        let dateDisplay1 = self.dateAdded.getForamttedDate()
        return "Cart Id is : " + String(self.cartId!) + "\nProduct Id is : " + String(self.productId!) + "\nQuantity is : " + String(self.quantity.unit()) + "\nDate Added is : " + dateDisplay1
    }
}
