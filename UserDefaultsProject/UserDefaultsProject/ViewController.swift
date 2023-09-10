//
//  ViewController.swift
//  UserDefaultsProject
//
//  Created by Ceren Uludoğan on 10.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SureLabel: UILabel!
    @IBOutlet weak var NotLabel: UILabel!
    @IBOutlet weak var SureTextField: UITextField!
    @IBOutlet weak var NotTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")//Verileri aldık
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        // as -->Casting
        if let gelenNot = kaydedilenNot as? String{
            
            NotLabel.text = "Yapılcak İş: \(gelenNot)"
        }
        
        if let gelenZaman = kaydedilenZaman as? String{
            SureLabel.text = "Sure: \(gelenZaman)"
        }
    }

    @IBAction func Kaydet(_ sender: Any) {
        NotLabel.text = "Yapılacak İş: \(NotTextField.text!)"
        
        SureLabel.text = "Sure: \(SureTextField.text!)"
        
        UserDefaults.standard.set(NotTextField.text!, forKey: "not")//Verileri kaydettik
        UserDefaults.standard.set(SureTextField.text!, forKey: "zaman")
       
    }
    
    @IBAction func Sil(_ sender: Any) {
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")//Verileri aldık
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        
        if  (kaydedilenNot as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            NotLabel.text = "Yapılcak İş: "
        }
        
        if (kaydedilenZaman as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "zaman")
            
            SureLabel.text = "Sure:"
        }
        


    }
}

