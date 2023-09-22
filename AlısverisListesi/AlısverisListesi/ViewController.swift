//
//  ViewController.swift
//  AlısverisListesi
//
//  Created by Ceren Uludoğan on 14.09.2023.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var isimDizisi = [String]()
    var idDizisi = [UUID]()
    var secilenIsim = ""
    var secilenUUID: UUID?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(eklemeButonuTiklandi))
        verileriAl()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(verileriAl), name: NSNotification.Name(rawValue: "veriGirildi"), object: nil)
    }
    
    
   @objc func verileriAl(){
       isimDizisi.removeAll(keepingCapacity: false)//Verileri tekrar diziye almamak için yaptık
       idDizisi.removeAll(keepingCapacity: false)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Alisveris")
        fetchRequest.returnsObjectsAsFaults = false //Çok büyük verilerde kullanlır
        
        do{
             let sonuclar = try context.fetch(fetchRequest)
            for sonuc in sonuclar  as! [NSManagedObject]{
             if let isim = sonuc.value(forKey: "isim") as? String{
                    isimDizisi.append(isim)
                }
                
                if let id = sonuc.value(forKey: "id") as? UUID{
                    idDizisi.append(id)
                }
                
               
            }
            
            tableView.reloadData()//Güncelle
        }catch{
            print("Hata var")
        }
       
        
    }
    @objc func eklemeButonuTiklandi(){
        secilenIsim = ""
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isimDizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = UITableViewCell()
        cell.textLabel?.text = isimDizisi[indexPath.row]
        return  cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {//Verileri aktarmış olduk
        if segue.identifier == "SecondViewController"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.secilenUrunIsmi = secilenIsim
            destinationVC.secilenUrunUUID = secilenUUID
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = isimDizisi[indexPath.row]
        secilenUUID = idDizisi[indexPath.row]
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
}

