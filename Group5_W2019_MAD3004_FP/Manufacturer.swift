//
//  Manufacturer.swift
//  Mid_Term_Test_MAD3004_W2019
//
//  Created by moxDroid.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import Foundation

class Manufacturer:IDisplay {
    
    let manufacturerId:Int?
    var manufacturerName:String?
    
    init(manufId:Int, manufName:String) {
        self.manufacturerId = manufId
        self.manufacturerName = manufName
    }
    
    func display() -> String {
        return "Manufacturer Id is : " + String(self.manufacturerId!) + "Manufacturer Name is : " + self.manufacturerName!
    }
}

