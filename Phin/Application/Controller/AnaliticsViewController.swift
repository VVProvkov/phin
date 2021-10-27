//
//  ThirdViewController.swift
//  Phin
//
//  Created by Vadim on 15.10.2021.
//
import Charts
import UIKit

class AnaliticsViewController: UIViewController, ChartViewDelegate {

    var pieChart = PieChartView()
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var chartsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pieChart.delegate = self
    
    }
    
    override func viewDidLayoutSubviews() {
        
        //git
        // git 2
        // git 3
        
        pieChart.frame = CGRect(x: 0, y: 0, width: self.chartsView.frame.size.width, height: self.chartsView.frame.size.height)
        pieChart.center = chartsView.center
        
        view.addSubview(pieChart)
        
        var entries = [ChartDataEntry]()

        for x in 0..<10 {
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }

        let set = PieChartDataSet(entries: entries)

        set.colors = ChartColorTemplates.colorful()
        
        pieChart.centerText = "56757"
        
        let data = PieChartData(dataSet: set)
        pieChart.data = data
    }
    


}
