//
//  ViewController.swift
//  Tipsy
//
//  Created by Yedige Ashirbek on 24.05.2022.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPercentButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var totalAmountOfMoney: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func numberTexted(_ sender: UITextField) {
    
        
        
    }
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        if sender.currentTitle! == "0%" {
            zeroPercentButton.isSelected = true
            tenPercentButton.isSelected = false
            twentyPercentButton.isSelected = false
        } else if sender.currentTitle! == "10%" {
            zeroPercentButton.isSelected = false
            tenPercentButton.isSelected = true
            twentyPercentButton.isSelected = false
        } else {
            zeroPercentButton.isSelected = false
            tenPercentButton.isSelected = false
            twentyPercentButton.isSelected = true
        }
                
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(format: "%.0f", sender.value)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.answer = String(format: "%.2f", totalAmountOfMoney!)
            
        }
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    
        totalAmountOfMoney = Double(billTextField.text!) ?? 0
        
        if tenPercentButton.isSelected == true {
            totalAmountOfMoney = totalAmountOfMoney! * 1.1
        } else if twentyPercentButton.isSelected == true {
            totalAmountOfMoney = totalAmountOfMoney! * 1.2
        }
        
        totalAmountOfMoney =  totalAmountOfMoney! / (Double(splitNumberLabel.text!) ?? 1)
                
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
}

