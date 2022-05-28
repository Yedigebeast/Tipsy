//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Yedige Ashirbek on 27.05.2022.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var answer: String?
    var tip: Int?
    var numberOfpeople: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = answer!
        settingsLabel.text = "Split between \(numberOfpeople!) people, with \(tip!)% tip."
        
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
    
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
