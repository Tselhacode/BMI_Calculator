//
//  ResultViewController.swift
//  BMI_Calculator
//
//  Created by TENZIN TSELHA on 11/24/21.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?
    var advice : String?
    var img : UIImage?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var bgImgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
    
        self.adviceLabel.text = advice
        
        self.bgImgView.image = img

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateBtnPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
  
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
