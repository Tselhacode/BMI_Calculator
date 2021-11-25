//
//  BMIBrain.swift
//  BMI_Calculator
//
//  Created by TENZIN TSELHA on 11/24/21.
//

import Foundation
import UIKit

struct BMIBrain {
    
    var bmi : BMI?
    
    func getBMI() -> String {
        let bmiRounded = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiRounded
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
    mutating func calculateBMI(weight : Float, height : Float){
       let bmiValue =  weight/pow(height,2)
        bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pizzas", color: UIColor.red)
        }
    }
   
   }
    
    
//    func getBMI() -> String {
//        if BMI != nil {
//            let bmiRounded = String(format: "%.1f", BMI!)
//            return bmiRounded
//        }else{
//            return "0.0"
//        }
//    }
    
//    func getBMI() -> String {
//        if let safeBMI == BMI {
//            let bmiRounded = String(format: "%.1f",safeBMI)
//            return bmiRounded
//        }else {
//            return "0.0"
//        }
//    }
    
    //optional chaining - need to check if BMI exist before accessign its value
    //
