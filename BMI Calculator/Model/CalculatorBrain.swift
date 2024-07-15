//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Bakhrom Usmanov on 15/07/24.
//

import UIKit

class CalculatorBrain{
    
    var bmi: String?
    
    func calculateBMI(height: Float, weight: Float){
        bmi = String(format: "%.1f", weight/pow(height,2))
        
    }
    
    func changeHeightSlider(_ heightLabel: UILabel, _ sender: UISlider){
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    func changeWeightSlider(_ weightLabel: UILabel, _ sender: UISlider){
        weightLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    
}
