//
//  main.swift
//  SwiftOOP
//
//  Created by Ceren Uludoğan on 13.09.2023.
//

import Foundation

print("Hello, World!")

let kullanici = Kullanici(isim: "Ceren", yas: 20, meslek: "Muhendis",tip: .NormalKullanici)
let  zeynep = OzelKullanici(isim: "Zeynep", yas: 30, meslek: "Avukat", tip: .AdminKullanici)

kullanici.ornekFonksiyon()
print(kullanici.tip)

print(zeynep.meslek)

zeynep.ornekFonksiyon()
zeynep.yeniFonksiyon()
zeynep.ornekFonksiyon()

print(kullanici.sacRengiAl())


