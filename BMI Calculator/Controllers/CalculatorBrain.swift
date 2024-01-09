//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by ANURAG KASHYAP on 20/10/23.

import UIKit
struct CalculatorBrain{
    var bmi : AdviceAndColor?
    
    mutating func calculateBMI(height : Float , weight : Float){
        let bmiVal = weight / (height * height)
        
        if bmiVal < 18.5 {
            bmi = AdviceAndColor(value: bmiVal, advice: "Underweight , Eat more you fucking skinny", color: UIColor.blue)
        }else if bmiVal < 24.9{
            bmi = AdviceAndColor(value: bmiVal, advice: "Congrats , You are Fit", color: UIColor.green)
        }else{
            bmi = AdviceAndColor(value: bmiVal, advice: "Overweight , Eat less you fat ass", color: UIColor.red)
        }
    }
    func getBMI() -> String{
        return String(format : "%0.1f",bmi?.value ?? "0.0")
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.black
    }
}
