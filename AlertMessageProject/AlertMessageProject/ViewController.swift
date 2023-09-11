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
        if  emailTextField.text == "" {
            //emailini girilmedi
            createAlert(titleGirdisi: "Hata!", messeageGirdisi: "Email Eksik")
        }
        else if passwordTextField.text == ""{
            //parola girilmedi
            createAlert(titleGirdisi: "Hata!", messeageGirdisi: "Parola Eksik")
        }
        else if passwordTextField.text != password2TextField.text {
            //parolalar eşleşmedi
            createAlert(titleGirdisi:"Hata!", messeageGirdisi: "Parola Eslesmiyor")
        }
        else {
            //başarılı giriş
            createAlert(titleGirdisi: "Tebrikler:)", messeageGirdisi: "Kullanici Olusturuldu")
        }
        
    }
       
    
    func createAlert(titleGirdisi:String, messeageGirdisi: String){
        let alertMessage = UIAlertController(title: titleGirdisi, message: messeageGirdisi, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (UIAlertAction) in
            //OK butonuna tıklanınca olacaklar
            print("Ok butonuna tiklandi")
            
        }
        
        alertMessage.addAction(okButton)
        self.present(alertMessage, animated: true,completion: nil)
        
    }
    
    
}

