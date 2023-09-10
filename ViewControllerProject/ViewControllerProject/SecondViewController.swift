//
//  SecondViewController.swift
//  ViewControllerProject
//
//  Created by Ceren Uludoğan on 8.09.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    var givenPassword = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordLabel.text = givenPassword
    }
    

   
}
