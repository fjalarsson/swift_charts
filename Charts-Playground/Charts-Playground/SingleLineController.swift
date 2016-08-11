//
//  SingleLineController.swift
//  Charts-Playground
//
//  Created by Fredrik Larsson on 2016-08-10.
//  Copyright © 2016 Fredrik Larsson. All rights reserved.
//

import UIKit
import RealmSwift
import Charts

class SingleLineController: UIViewController, ChartViewDelegate{

    @IBOutlet weak var lineView: LineChartView!
    
    //MARK: Variables
    var dog = Dog()
    let chv = ChartHelpers()
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize(){
        let data = dog.initSingleDog()
        let dates: [String] = ["Mon", "Tue", "Wed", "Thu","Fri"]
        let d = dog.getDog(data)
        setChart(dates, dog: d)
        self.lineView.descriptionText = ""
        
    }
    
    
    func setChart(dataPoints: [String], dog: Dog) {
        lineView.noDataText = "No weights registrered"
        
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: dog.weights[i].weight.toDouble, xIndex: i)
            dataEntries.append(dataEntry)
        }
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: dog.name)
        let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
        lineView.xAxis.labelPosition = .Bottom
        self.lineView.data = lineChartData
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

