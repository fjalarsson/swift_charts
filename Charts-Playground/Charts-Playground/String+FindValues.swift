//
//  String+FindValues.swift
//  Charts-Playground
//
//  Created by Fredrik Larsson on 2016-08-11.
//  Copyright © 2016 Fredrik Larsson. All rights reserved.
//

import Foundation

extension String{
        

        func length() -> Int {
            return self.length()
        }
    
        func contains(substring: String) -> Bool {
            return (self as NSString).containsString(substring)
        }
         
        func isNumeric() -> Bool {
            return (self as NSString).rangeOfCharacterFromSet(NSCharacterSet.decimalDigitCharacterSet().invertedSet).location == NSNotFound
        }

}