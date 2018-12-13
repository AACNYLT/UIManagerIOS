//
//  ViewController.swift
//  NYLT UI Manager
//
//  Created by Aroon Narayanan on 12/12/18.
//  Copyright © 2018 Atlanta Area Council NYLT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var messageField: UITextField!
    @IBAction func SetMessage(_ sender: Any) {
        UserDefaults(suiteName: "group.org.aacnylt.ui")?.set(messageField.text, forKey: "nyltui")
        Notify(message: "Message set.", title: "Success")
    }
    
    // MARK: general utils
    func Notify(message: String, title: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
}

