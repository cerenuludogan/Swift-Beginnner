//
//  ViewController.swift
//  AlısverisListesi
//
//  Created by Ceren Uludoğan on 14.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(eklemeButonuTiklandi))
    }

    @objc func eklemeButonuTiklandi(){
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }

}

