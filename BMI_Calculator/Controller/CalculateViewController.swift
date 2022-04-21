//
//  CalculateViewController.swift
//  BMI_Calculator
//
//  Created by TENZIN TSELHA on 11/24/21.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    
    @IBOutlet weak var slidingHeightLabel: UILabel!
    @IBOutlet weak var slidingWeightLabel: UILabel!
    @IBOutlet weak var heightSlide: UISlider!
    @IBOutlet weak var weightSlide: UISlider!
    
    var brainObj = BMIBrain()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format:"%.2f",sender.value)
        slidingHeightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(Int(sender.value))
        //String(format: "%.0f",sender.value)
        slidingWeightLabel.text = "\(weight)kg"
    }
    
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        let height = heightSlide.value
        let weight = weightSlide.value
        brainObj.calculateBMI(weight: weight, height: height)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
  
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = brainObj.getBMI()
            destinationVC.advice = brainObj.getAdvice()
            destinationVC.img = brainObj.getImage()
        }
        
    }
    
}
