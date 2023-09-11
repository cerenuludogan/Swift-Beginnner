//
//  ViewController.swift
//  TimerProject
//
//  Created by Ceren Uludoğan on 11.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var timer = Timer()
    var kalanZaman = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        kalanZaman = 15
        label.text = "Zaman: \(kalanZaman)"
    }

   
    @IBAction func Start(_ sender: Any) {
        //timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ti), userInfo: <#T##Any?#>, repeats: <#T##Bool#>)
        timer = Timer.scheduledTimer(timeInterval: 1,target: self, selector: #selector(timerFunc),userInfo: nil ,repeats: true)
    }
   @objc func timerFunc(){
        label.text = "Zaman: \(kalanZaman)"
        kalanZaman = kalanZaman - 1
        
        if kalanZaman == 0 {
            label.text = "Sure bitti"
            timer.invalidate()
            kalanZaman = 15
        }
    
    }
}

