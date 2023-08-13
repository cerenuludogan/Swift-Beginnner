import UIKit

func ornekFonksiyon(){
    print("ornek")
}

ornekFonksiyon()
//Parametre & Input
func myFunction(a : String){
    print(a)
}

myFunction(a : "atıl")

//Output
func toplama(x: Int, y:Int){
    print(x + y)
}

toplama(x: 10, y: 20)

var numara = toplama(x: 20, y: 30)
print(numara)

func carpma(a: Int, b: Int)-> Int{
    return a * b
}

var carpmaSonucu = carpma(a:5 , b:8)
    print(carpmaSonucu)


func logicFunction(x: Int , y: Int)->Bool {
    if x > y {
        return true
    }
    else{
        return false
    }
}

 logicFunction(x: 5, y: 3)

//Opsiyoneller

var benimIsmim : String?
benimIsmim?.uppercased()
benimIsmim = "Ahmet"
benimIsmim?.uppercased()

var kullaniciNumarasi = "10"

var sonuc = (Int(kullaniciNumarasi) ?? 1) * 5
if let yeniSonuc = Int(kullaniciNumarasi){
    yeniSonuc * 5
} else {
    print("Lütfen rakam gir")
}

