//
//  UploadViewController.swift
//  FotografPaylasmaUygulamasi
//
//  Created by Ceren Uludoğan on 9.10.2023.
//

import UIKit
import FirebaseStorage

class UploadViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        imageView.isUserInteractionEnabled = true
        let imageGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselSec))
        imageView.addGestureRecognizer(imageGestureRecognizer)
        
        
        
    }
    @objc func gorselSec() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    
    @IBAction func uploadButton(_ sender: Any) {
        let storage = Storage.storage()
        let storageRefrance = storage.reference()
        
        let mediaFolder = storageRefrance.child("media")
        if let data = imageView.image?.jpegData(compressionQuality: 0.5){//Data çevirme
            let uuid = UUID().uuid
            let imageRefrance = mediaFolder.child("\(uuid).jpeg")
            
            imageRefrance.putData(data,metadata: nil) { (storagemetadata,error) in
                if error != nil {
                    self.hataMesajiGoster(title: "Hata!", message: error?.localizedDescription ?? "Hata Aldınız ,Tekrar Deneyiniz")
                }else{
                    imageRefrance.downloadURL { url, error in
                        if error == nil {
                            let imageURL = url?.absoluteString
                            print(imageURL!)
                        }
                    }
                }
            }
            
        }
    }
    
    func hataMesajiGoster(title: String,message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil)
        alert.addAction(okButton)
        self.present(alert,animated: true,completion: nil)
    }
}
        
