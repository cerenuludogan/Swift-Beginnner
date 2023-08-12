import UIKit

//Koleksiyon,Collections
//Array,dizi,liste

var firstCollection = ["Zeynep","Merve","Ahmet","Ali"]

 //index

firstCollection[0].uppercased()

firstCollection[2] = "Ayşe"
firstCollection[2]

var secondCollection = [0,1,2,3,4,5]
secondCollection[2] * 5 / 10

var mixCollection = [100,200,"papatya","gül"] as [Any]
// as---> casting , any--->any object

mixCollection[2].self
var newVeriable = mixCollection[2] as! String

mixCollection.append("Osman")
mixCollection.count

var numbersCollection = [5,6,8,2,34]
numbersCollection.sort()

//set
var numbers = [1,1,1,2,3,4,5]
var numbers2 : Set = [1,1,1,1,2,3,4,5]
numbers2.remove(3)
numbers2

var siperisler = ["İstanbul","İstanbul","Ankara","Ankara","Ankara","İzmir"]
siperisler.count

var siparisler2 = Set(siperisler)
siparisler2.count

//Dictionary
//key-value pairig - anahtar kelime -değer eşleşmesi

let meyveDizisi = ["Elma","Armut","Karpuz","Muz"]
let kaloriDizisi = [100,200,300,400]

meyveDizisi[2]
kaloriDizisi[2]

let meyveKaloriDictionary = ["Armut":100,"Muz":200,"Karpuz":300]
meyveKaloriDictionary["Muz"]
meyveKaloriDictionary.keys
meyveKaloriDictionary.values

