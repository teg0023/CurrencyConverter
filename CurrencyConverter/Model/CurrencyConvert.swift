//
//  CurrencyConvert.swift
//  CurrencyConverter
//
//  Created by user248010 on 2/13/24.
//

import Foundation
struct CurrencyConvert
{
    func usdToEuro(usd : Int) -> Float
    {
        return Float(usd) * 0.927
    }
    
    func usdToTTD(usd : Int) -> Float
    {
        return Float(usd) * 6.722
    }
    
    func usdToJPY(usd : Int) -> Float
    {
        return Float(usd) * 149.342
    }
    
    func usdToEGP(usd : Int) -> Float
    {
        return Float(usd) * 30.93
    }
    
}
