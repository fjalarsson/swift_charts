//
//  MultipleLinesController.swift
//  Charts-Playground
//
//  Created by Fredrik Larsson on 2016-08-10.
//  Copyright © 2016 Fredrik Larsson. All rights reserved.
//

import UIKit
import Charts

class MultipleLinesController: UIViewController, ChartViewDelegate {
   
    @IBOutlet var lineView: LineChartView!
    
    //MARK: Variables
    var dog = Dog()
    let chv = ChartHelpers()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func initialize(){
        let data = dog.initMultipleDogs()
        let weights = chv.IntArraysToMultipleDoubleArray(dog.getMultipleDogWeights(data))
        
        let dates: [String] = ["Mon", "Tue", "Wed", "Thu","Fri"]
        setChart(dates, values: weights)
        self.lineView.descriptionText = ""
        
    }
    
    
    func setChart(dataPoints: [String], values: [[Double]]) {
        lineView.noDataText = "No weights registrered"
        
        
        
        var dataEntries = [[ChartDataEntry]]()
        for i in 00..<dataPoints.count{
            
        }
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i].roundTo1f, xIndex: i)
            dataEntries.append(dataEntry)
        }
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Weight")
        let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
        lineView.xAxis.labelPosition = .Bottom
        self.lineView.data = lineChartData
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
