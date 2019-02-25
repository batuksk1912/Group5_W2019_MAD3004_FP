//
//  Product.swift
//  Mid_Term_Test_MAD3004_W2019
//
//  Created by moxDroid.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import Foundation

class Product : Manufacturer {
    
    let productId:Int?
    private var productName:String?
    var getProductName:String?
    {
        get{
            return productName
        }
        
    }
    private var price:Float?
    var getProductPrice:Float?
    {
        get{
            return price
        }
    }
    private var quantity:Int?
    var getProductQuantity:Int?
    {
        get{
            return quantity
        }
    }
    
    init(manufId:Int, manufName:String,productId:Int,productName:String,price:Float,quantity:Int) {
        self.productId = productId
        super.init(manufId: manufId, manufName: manufName)
        
        self.productName = productName
        self.price = price
        self.quantity = quantity
    }
    
    func updateQuantity(newQuantity:Int) {
        self.quantity = self.quantity! + newQuantity
    }
    
    override func display() -> String
    {
        return "null"
    }
}
