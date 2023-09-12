//
//  ViewController.swift
//  SuperKahramanKitabi
//
//  Created by Ceren Uludoğan on 12.09.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var superHero = [String]()
    var superHeroImagesName = [String]()

    var selectHeroName = ""
    var selectHeroImageName = ""
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
       
        superHero.append("Batman")
        superHero.append("Superman")
        superHero.append("Iron Man")
        superHero.append("Spiderman")
        
       // var superHeroImages = [UIImage]()
        superHeroImagesName.append("batman")
        superHeroImagesName.append("superman")
        superHeroImagesName.append("ironman")
        superHeroImagesName.append("spiderman")

        
    }

   // numberOfRowsInSection ->Kaç tane row olacak
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHero.count
    }
   // cellForRow atIndexPath -> Hücrenin içerisinde  neler gösterilecek
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHero[indexPath.row]
        return cell
    }
    
    
  
    func tableView(_ tableView: UITableView, commit editingStyle:UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath){
        
            if editingStyle == .delete {
                superHero.remove(at: indexPath.row)
                superHeroImagesName.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
            }
        }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         selectHeroName = superHero[indexPath.row]
         selectHeroImageName = superHeroImagesName[indexPath.row]
        performSegue(withIdentifier: "toSecondVC", sender: nil )
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectHeroName = selectHeroName
            destinationVC.selectHeroImageName = selectHeroImageName
        }
    }
}


