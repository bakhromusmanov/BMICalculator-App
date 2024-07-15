//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Bakhrom Usmanov on 15/07/24.
//

import UIKit

class CalculatorBrain{
    
    var bmi: String?
    var adviceLabel: String?
    var background: UIView?
    
    func calculateBMI(height: Float, weight: Float){
        bmi = String(format: "%.1f", weight/pow(height,2))
    }
    
    func changeHeightSlider(_ heightLabel: UILabel, _ sender: UISlider){
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    func changeWeightSlider(_ weightLabel: UILabel, _ sender: UISlider){
        weightLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    func updateAdvice(adviceLabel: UILabel, viewBackground: UIView){
        let value = Float(bmi!) ?? 0.0
        if value <= 18.5{
            adviceLabel.text = "Underweight"
            viewBackground.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        } else if value <= 24.9{
            adviceLabel.text = "Normal Weight"
            viewBackground.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        } else{
            adviceLabel.text = "Overweight"
            viewBackground.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
    
    func updateResult(resultLabel: UILabel){
        resultLabel.text = bmi
    }
}
