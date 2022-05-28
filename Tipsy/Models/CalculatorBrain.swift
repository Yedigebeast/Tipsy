//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Yedige Ashirbek on 28.05.2022.
//

import Foundation

struct CalculatorBrain {
    
    var tipValue: Tip?
    
    mutating func getPercentButton (tipSelected: String) -> [Bool] {
        
        var tips: [Bool] = [false, false, false]
        
        if tipSelected == "0%" {
            tips[0] = true
            tipValue?.tip = 0
        } else if tipSelected == "10%" {
            tips[1] = true
            tipValue?.tip = 10
        } else {
            tips[2] = true
            tipValue?.tip = 20
        }
        
        return tips
    }
    
}
