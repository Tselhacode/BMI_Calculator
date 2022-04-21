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
    
    func getImage() -> UIImage {
        return bmi?.image ?? UIImage(named: "bg-img.jpg")!
    }
    
    
    mutating func calculateBMI(weight : Float, height : Float){
       let bmiValue =  weight/pow(height,2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Snack Away", image: UIImage(named: "underweight.jpg")!)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", image: UIImage(named: "normal.jpg")!)
        }else {
            bmi = BMI(value: bmiValue, advice: "Adopt a healthier diet", image: UIImage(named: "overweight.jpg")!)
        }
    }
   
}
