//
//  ViewController.swift
//  SehirTanitimKitabi
//
//  Created by Ceren Uludoğan on 14.09.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var Sehirler = [Sehir]()
    var kullaniciSecimi : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
        tableView.delegate = self
        tableView.dataSource = self
        
        
        //Sehirler
        let sehir1 = Sehir(İsim: "Istanbul", bolge: "Marmara", resim: UIImage(named: "istanbul")!)
        
        let sehir2 = Sehir(İsim: "Ankara", bolge: "Ic Anadolu", resim: UIImage(named: "ankara")!)
        
        let sehir3 = Sehir(İsim: "Izmir", bolge: "Ege", resim: UIImage(named: "izmir")!)
        
        let sehir4 = Sehir(İsim: "Mardin", bolge: "Doğu Anadolu", resim: UIImage(named: "mardin")!)
        
        let sehir5 = Sehir(İsim: "Bursa", bolge: "Marmara", resim: UIImage(named: "bursa")!)
        
         Sehirler = [sehir1,sehir2,sehir3,sehir4,sehir5]
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Segueden önce hangi veri seçildi onu bulmalıyız
         kullaniciSecimi = Sehirler[indexPath.row]
         performSegue(withIdentifier: "toSecondVC", sender: nil )
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.secilenSehir = kullaniciSecimi
            
            
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Sehirler.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = UITableViewCell()
        cell.textLabel?.text = Sehirler[indexPath.row].İsim
        return  cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Önce diziden öğeyi siliyoruz
            Sehirler.remove(at: indexPath.row)
            
            // Daha sonra TableView'da ilgili satırı silmek için aşağıdaki kodu kullanabiliriz
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    
    
    
}

