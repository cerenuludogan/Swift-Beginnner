//
//  ViewController.swift
//  FotografPaylasmaUygulamasi
//
//  Created by Ceren Uludoğan on 3.10.2023.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    
    @IBOutlet weak var sifretextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    @IBAction func kayitOlTiklandi(_ sender: Any) {
        if emailTextField.text != "" && sifretextField.text != ""{
            Auth.auth().createUser(withEmail: emailTextField.text!, password: sifretextField.text!) { authdataresult, error in
                if error != nil {
                    self.hataMesaji(tittleInput: "Hata!", messageInput: error?.localizedDescription ?? "Hata Aldınız,Tekrar Kontrol Ediniz")
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
            
        }else{
            hataMesaji(tittleInput: "Hata!", messageInput: "Email ve Parola Giriniz")
            
        }
        
    }
    @IBAction func girisYapTiklandi(_ sender: Any) {
        if emailTextField.text != "" && sifretextField.text != "" {
            
            Auth.auth().signIn(withEmail: emailTextField.text!, password: sifretextField.text!){
                (authdataresult,error) in
                if error != nil{
                    self.hataMesaji(tittleInput: "Hata!", messageInput: error?.localizedDescription ?? "Hata Aldınız,Tekrar Deneyin!")
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
        }else{
            self.hataMesaji(tittleInput: "Hata!", messageInput: "Email ve Parola Giriniz")
        }
    }
    
    func hataMesaji(tittleInput: String,messageInput: String){
        let alert = UIAlertController(title: tittleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true,completion: nil)
    }
}

