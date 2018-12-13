//
//  TodayViewController.swift
//  NYLT Today Message
//
//  Created by Aroon Narayanan on 12/12/18.
//  Copyright © 2018 Atlanta Area Council NYLT. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var todayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        if let message = UserDefaults(suiteName: "group.org.aacnylt.ui")?.value(forKey: "nyltui") as? String {
            if (todayLabel.text == message) {
                completionHandler(.noData)
            } else {
                todayLabel.text = message
                completionHandler(.newData)
            }
        } else {
            completionHandler(.failed)
        }
    }
    
}
