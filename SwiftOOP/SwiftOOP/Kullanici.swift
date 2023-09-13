//
//  Kullanici.swift
//  SwiftOOP
//
//  Created by Ceren Uludoğan on 13.09.2023.
//

import Foundation
//Sınıfın dışında yaz
enum KullaniciTipi {
    case AdminKullanici
    case NormalKullanici
    case YetkisizKullanici
    
}

class Kullanici {
    
    var isim: String
    var yas: Int
    var meslek: String
    var tip: KullaniciTipi
    private var sacRengi: String = "Sari sacli"
    
    
    //inializer.İlk obje oluşturulduğunda bi işlem olmasını istiyorsam kodları buraya yazıyorum.
    
    init(isim: String, yas: Int, meslek: String,tip: KullaniciTipi) {
        self.isim = isim
        self.yas = yas
        self.meslek = meslek
        self.tip = tip
    }
  
    func ornekFonksiyon(){
        print("Ornek Fonksiyon")
    }
    
    //Access Levels
    //open,public,internal,fileprivate,private
    
    private func Test(){
        print("Test")
    }
    
    func sacRengiAl() -> String {
        return self.sacRengi
    }
}


