//
//  ViewController.swift
//  Calculator
//
//  Created by Ceren Uludoğan on 14.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var secondText: UITextField!
    
    @IBOutlet weak var firstText: UITextField!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//BÖlme İşlemi
    @IBAction func divideButton(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                 result = firstNumber / secondNumber
                
                resultLabel.text = String(result)
            }
        }
    }
    
//Çarpma İşlemi
    
        @IBAction func multiplicationButton(_ sender: Any) {
            if let firstNumber = Int(firstText.text!){
                if let secondNumber = Int(secondText.text!){
                     result = firstNumber * secondNumber
                    
                    resultLabel.text = String(result)
                }
            }
        }
    
//Çıkarma İşlemi
    @IBAction func decreaseButtoon(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                 result = firstNumber - secondNumber
                
                resultLabel.text = String(result)
            }
        }
    }
    
//Toplama İşlemi
    @IBAction func sumButton(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                 result = firstNumber + secondNumber
            
                resultLabel.text = String(result)
            }
        }
    }
    
}

