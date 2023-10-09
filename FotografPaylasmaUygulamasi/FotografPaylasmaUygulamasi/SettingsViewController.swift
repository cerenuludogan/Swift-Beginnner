//
//  SettingsViewController.swift
//  FotografPaylasmaUygulamasi
//
//  Created by Ceren Uludoğan on 9.10.2023.
//

import UIKit
import FirebaseAuth

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func CikisYapTiklandi(_ sender: Any) {
        
        do{
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toViewController", sender: nil)
        }catch{
            print("Hata!")
        }
         
    }
    

}
