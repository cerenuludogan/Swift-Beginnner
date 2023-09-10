//
//  ViewController.swift
//  ViewControllerProject
//
//  Created by Ceren Uludoğan on 8.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var firstLabel: UILabel!
    var getPAssword = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        
    }
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disapper")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
        textField.text = ""
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    
    @IBAction func Control(_ sender: Any) {
        getPAssword = textField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.givenPassword = getPAssword
            
        }
    }
    
}

