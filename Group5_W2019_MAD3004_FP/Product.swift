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
    
    init(manufId:Int, manufName:String, productId:Int, productName:String, price:Float, quantity:Int) {
        self.productId = productId
        self.productName = productName
        self.price = price
        self.quantity = quantity
        super.init(manufId: manufId, manufName: manufName)
    }
    
    /*override func display() -> String
    {
        return "Manufacturer Id : " + self.manufacturerId! + "\n" + self.manufacturerName! + "\n" + self.productId! + "\n" + self.productName! + "\n" + self.price!.currency() + "\n" + self.quantity!.unit()
    }*/
}
