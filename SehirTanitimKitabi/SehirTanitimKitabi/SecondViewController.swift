//
//  SecondViewController.swift
//  SehirTanitimKitabi
//
//  Created by Ceren Uludoğan on 14.09.2023.
//

import UIKit

class SecondViewController: UIViewController {


    @IBOutlet weak var sehirBolgesiLable: UILabel!
    @IBOutlet weak var sehirIsmiLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var secilenSehir: Sehir?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sehirIsmiLabel.text = secilenSehir?.İsim
        sehirBolgesiLable.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.resim
        
        // Do any additional setup after loading the view.
    }
    


}
