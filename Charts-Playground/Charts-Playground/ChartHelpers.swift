//
//  ChartHelpers.swift
//  Charts-Playground
//
//  Created by Fredrik Larsson on 2016-08-10.
//  Copyright © 2016 Fredrik Larsson. All rights reserved.
//

import Foundation
class ChartHelpers {
       
    func IntArrayToDoubleArray(intArray: [Int]) -> [Double]{
        var doubleArray: [Double] = []
        for integer in intArray {
            let number = Double(integer)
            doubleArray.append(number)
        }
        return doubleArray
    }
    
    func IntArraysToMultipleDoubleArray(intArrays: [[Int]]) -> [[Double]]{
        var doubleArrays = [[Double]]()
        
        for arr in intArrays {
            var doubleArray = [Double]()
            
            for int in arr{
                let x = Double(int)
                doubleArray.append(x)
            }
            doubleArrays.append(doubleArray)
        }
        return doubleArrays
    }
}
