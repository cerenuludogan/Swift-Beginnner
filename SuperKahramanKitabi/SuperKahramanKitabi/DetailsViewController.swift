//
//  DetailsViewController.swift
//  SuperKahramanKitabi
//
//  Created by Ceren Uludoğan on 12.09.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    
    var selectHeroName = ""
    var selectHeroImageName = ""
    
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: selectHeroImageName)
        lable.text = selectHeroName

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
