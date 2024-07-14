//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Bakhrom Usmanov on 14/07/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
