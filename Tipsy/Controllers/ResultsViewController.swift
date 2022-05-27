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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
    
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
