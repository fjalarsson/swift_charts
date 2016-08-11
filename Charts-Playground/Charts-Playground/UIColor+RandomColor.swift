//
//  UIColor+RandomColor.swift
//  Charts-Playground
//
//  Created by Fredrik Larsson on 2016-08-11.
//  Copyright © 2016 Fredrik Larsson. All rights reserved.
//

import UIKit

extension UIColor {
    
    private class func randomValueForColor() -> CGFloat {
        
        return CGFloat( CGFloat(arc4random()) % 256 / 255.0)
    }
    
    public class func randomColor() -> UIColor {
        
        return UIColor(red: randomValueForColor(), green: randomValueForColor(), blue: randomValueForColor(), alpha: 1.0)
    }
    
}