//
//  BMICalculator.swift
//  Created by NEHA PATEL on 16/12/22.
//  Copyright © 2022 30128051. All rights reserved.
//

import UIKit


struct BMICalculator {
    
    // define some variables
    var bmi: BMI?
    
    // define some functions
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 16 {
            self.bmi = BMI(value: bmiValue, advice: "Severe Thinness", color: #colorLiteral(red: 0.1052683666, green: 0.6784334183, blue: 0.9730395675, alpha: 1))
        }
        else if (bmiValue >= 16) && (bmiValue < 17) {
            bmi = BMI(value: bmiValue, advice: "Moderate Thinness", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else if (bmiValue >= 17) && (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Mild Thinness", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else if (bmiValue >= 18.5) && (bmiValue < 25) {
            bmi = BMI(value: bmiValue, advice: "Normal", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else if (bmiValue >= 25) && (bmiValue < 30) {
            bmi = BMI(value: bmiValue, advice: "OverWeight", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else if (bmiValue >= 30) && (bmiValue < 35) {
            bmi = BMI(value: bmiValue, advice: "Obese Class I", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else if (bmiValue >= 35) && (bmiValue <= 40) {
            bmi = BMI(value: bmiValue, advice: "Obese Class II", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else if (bmiValue > 40) {
            bmi = BMI(value: bmiValue, advice: "Obese Class III", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else {
           print("Nothing!")
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Unable to calculate"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    }
    
}
