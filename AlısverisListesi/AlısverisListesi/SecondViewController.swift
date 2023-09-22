//
//  SecondViewController.swift
//  AlısverisListesi
//
//  Created by Ceren Uludoğan on 19.09.2023.
//

import UIKit
import CoreData

class SecondViewController: UIViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

   
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var bedenTextField: UITextField!
    @IBOutlet weak var fiyatTextField: UITextField!
    @IBOutlet weak var isimTextField: UITextField!
    
    var secilenUrunIsmi = ""
    var secilenUrunUUID: UUID?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if secilenUrunIsmi != ""{
            //CoreDta seçilen ürün bilgilerini gösterecek
            
            if let uuidString = secilenUrunUUID?.uuidString{
                print(uuidString)
            }
        }else{
        
            isimTextField.text = ""
            bedenTextField.text = ""
            fiyatTextField.text = ""
        }
        

        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(klavyeyiKapat))
        view.addGestureRecognizer(gestureRecognizer)
        
        imageView.isUserInteractionEnabled = true //Kullanıcı etkileşime girebilir
        let imageGestureRecognize = UITapGestureRecognizer(target: self, action: #selector(gorselSec))
        imageView.addGestureRecognizer(imageGestureRecognize)//**
        
    }
    
    
    @objc func gorselSec(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker, animated: true,completion: nil)//Kullanıcıyı kütüphaneye taşır
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true,completion: nil)
    }
    

    @objc func klavyeyiKapat(){
        view.endEditing(true)
        
    }
    
   
    @IBAction func kaydet(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate// appDelegate'ı bir değişken olarak tanımlıyoruz.saveContext fonksiyonuna erişmiş oluyoruz
        let context  = appDelegate.persistentContainer.viewContext
        
        let alisveris = NSEntityDescription.insertNewObject(forEntityName: "Alisveris", into: context)
        alisveris.setValue(isimTextField.text, forKey: "isim")
        alisveris.setValue(bedenTextField.text, forKey: "beden")
        
        if let fiyat = Int(fiyatTextField.text!){
            alisveris.setValue(fiyat, forKey: "fiyat")
            
        }
        
        //universal unique id
        alisveris.setValue(UUID(), forKey: "id")
        
        let data = imageView.image!.jpegData(compressionQuality: 0.5)//Görseli dataya çevirdik
        alisveris.setValue(data, forKey: "gorsel")
        
        do {
            try context.save()
            print("kayıt başarılı")
        }catch{
            print("hata var")
        }
        
        NotificationCenter.default.post(name:NSNotification.Name(rawValue: "veriGirildi") , object: nil)//Bildirim göndermek için
        self.navigationController?.popViewController(animated: true)
        
        
    }
    
    
}
