//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Bakhrom Usmanov on 14/07/24.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorBrain.updateAdvice(adviceLabel: adviceLabel, viewBackground: self.view)
        calculatorBrain.updateResult(resultLabel: resultLabel)
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
