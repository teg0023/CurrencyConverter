//
//  USD.swift
//  CurrencyConverter
//
//  Created by user248010 on 2/13/24.
//

import Foundation
struct USD
{
    var usDollarsString : String
    
    init(usDollarsStringIn : String)
    {
        usDollarsString = usDollarsStringIn
    }
    
    func toInteger() -> Int
    {
        var counter = 0;
        for char in usDollarsString
        {
            let asciiString = "\(String(describing: char.asciiValue))"
            if (asciiString >= "Optional(48)" && asciiString <= "Optional(57)")
            {
                counter += 1
            }
        }
        if (counter != usDollarsString.count)
        {
            return -1
        }
        return Int(usDollarsString)!
    }
}
