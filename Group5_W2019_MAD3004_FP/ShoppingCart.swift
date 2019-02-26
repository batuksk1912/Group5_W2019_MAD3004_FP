//
// Created by Danilo Esser on 2019-02-16.
// Copyright (c) 2019 Danilo Esser. All rights reserved.
//

import Foundation

class ShoppingCart :IDisplay {

    private var cartId: Int?
    private var productId: Int?
    private var quantity: Int?
    private var dateAdded: Date = Date()
    
    private lazy var dictProducts=[Int:Product]()

    init(cartId: Int, productId: Int, quantity: Int, dateAdded: Date) {
        self.cartId = cartId
        self.productId = productId
        self.quantity = quantity
        self.dateAdded = dateAdded
    }
    
    func addCartItem(products : Product) {
        dictProducts.updateValue(products, forKey: products.productId!)
    }
    
    func updateQuantity(newQuantity:Int) {
        self.quantity = self.quantity! + newQuantity
    }
    
    func viewCartDetails() {
        for (_,products) in dictProducts {
            print(products.display())
        }
    }
    
    func checkOut() {
        dictProducts.removeAll()
    }
    
    func display() -> String {
        let dateDisplay1 = self.dateAdded.getFormattedDate()
        return "Cart Id is : " + String(self.cartId!) + "\nProduct Id is : " + String(self.productId!) + "\nQuantity is : " + String(self.quantity!.unit()) + "\nDate Added is : " + dateDisplay1
    }
}
