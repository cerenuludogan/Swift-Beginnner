import UIKit

//Loops (Döngüler)

//While Loop


3<9
3<2
2>1
2>=2

var x = 5
print("Döngü başladı")
while x < 10{
    print(x)
    x += 1
}
print("Döngü biti")

//for loop
var myArray = ["Merve","Ayse","Ali"]
for isim in myArray {
    print(isim)
}

var numaraDizisi = [10,20,30,40,70]
numaraDizisi[0] / 5 * 3

for num in numaraDizisi{
    print(num / 5 * 3)
}

//If Statements

//AND &&
// OR ||

var benimYasim = 9
if benimYasim < 20 {
    print("çok gençsin")
    
}
else if benimYasim > 20 && benimYasim < 30 {
    print("20'li yaşlarındasın")
}
