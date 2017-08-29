//
//  Wage.swift
//  Window Shopper
//
//  Created by Mark Rabins on 8/28/17.
//  Copyright © 2017 self. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
        
    }
}
