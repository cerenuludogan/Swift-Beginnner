//
//  ViewController.swift
//  LayoutProject
//
//  Created by Ceren Uludoğan on 17.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width  = view.frame.size.width
        let height = view.frame.size.height
        
        //Label
        let myLabel = UILabel()
        myLabel.text = "Text Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 30, width: width * 0.8, height: 60)
        view.addSubview(myLabel)
        
    
        
        
    }

    
    

}

