//
//  OzelKullanici.swift
//  SwiftOOP
//
//  Created by Ceren Uludoğan on 13.09.2023.
//

import Foundation

class OzelKullanici : Kullanici{
    
    func yeniFonksiyon(){
        print("Yeni fonksiyon")
    }
    
    override func ornekFonksiyon() {
        super.ornekFonksiyon()
        print("Ozel Kullanicidaki fonksiyon")
    }
    
}
