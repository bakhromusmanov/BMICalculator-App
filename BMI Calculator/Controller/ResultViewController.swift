//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Bakhrom Usmanov on 14/07/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = calculatorBrain.bmi

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
