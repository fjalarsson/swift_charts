//
//  NumericExtensions.swift
//  Charts-Playground
//
//  Created by Fredrik Larsson on 2016-08-10.
//  Copyright © 2016 Fredrik Larsson. All rights reserved.
//

import Foundation
extension Double {
    var roundTo1f: Double {return Double(round(10*self)/10)  }
    var roundTo3f: Double {return Double(round(1000*self)/1000) }
}
