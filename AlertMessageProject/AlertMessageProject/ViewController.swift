//
//  ViewController.swift
//  AlertMessageProject
//
//  Created by Ceren Uludoğan on 11.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password2TextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpButton(_ sender: Any) {
        let alertMessage = UIAlertController(title: "Hata Mesajı", message: "Email yanlis girildi", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (UIAlertAction) in
            //OK butonuna tıklanınca olacaklar
            print("Ok butonuna tiklandi")
            
        }
        
        alertMessage.addAction(okButton)
        self.present(alertMessage, animated: true,completion: nil)
        
    }
    
}

