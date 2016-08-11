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
   
    
    @IBOutlet weak var lineView: LineChartView!
    
    //MARK: Variables
    var dog = Dog()
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize(){
        let data = dog.initMultipleDogs()
        let dates: [String] = ["Mon", "Tue", "Wed", "Thu","Fri"]
        let dogs = dog.getDogs(data)
        
        setChart(dates, dogs: dogs)
        self.lineView.descriptionText = ""
        
    }
 
    
    func setChart(dataPoints: [String], dogs: [Dog]) {
       
        lineView.noDataText = "No weights registrered"
        var dataSets = [LineChartDataSet]()
        
        for val in 0..<dogs.count{
            var dataEntries = [ChartDataEntry]()
            
            for i in 0..<dataPoints.count {
                dataEntries.append(ChartDataEntry(value: dogs[val].weights[i].weight.toDouble, xIndex: i))
            }
            
            let randomColor = UIColor.randomColor()
            let dataSet = LineChartDataSet(yVals: dataEntries, label: dogs[val].name)
            dataSet.setColor(randomColor)
            dataSet.setCircleColor(randomColor)
            dataSet.lineWidth = 2.0
            dataSet.circleRadius = 6.0
            dataSet.fillAlpha = 65 / 255.0
            dataSet.fillColor = randomColor
            dataSet.highlightColor = randomColor
            dataSet.drawCircleHoleEnabled = true
            dataSets.append(dataSet)
           
        }
        
        let data: LineChartData = LineChartData(xVals: dataPoints, dataSets: dataSets)
        self.lineView.xAxis.labelPosition = .Bottom
        self.lineView.data = data
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
