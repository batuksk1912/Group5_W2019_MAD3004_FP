//
//  IDisplay.swift
//  Group5_W2019_MAD3004_FP
//
//  Created by Baturay Kayatürk on 22.02.2019.
//  Copyright © 2019 LambtonCollege. All rights reserved.
//

import Foundation

protocol IDisplay {
    func display() -> String
}

extension Float
{
    public func currency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}

extension Int
{
    public func unit() -> String
    {
        return String.init(format: "%d Units", self)
    }
}

extension Date
{
    public func getForamttedDate() -> String
    {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "EEEE, dd MMMM, yyyy"
        let formattedDate = dateFormatterPrint.string(from: self)
        return formattedDate
    }
}
