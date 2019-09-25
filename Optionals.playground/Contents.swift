import UIKit

var str = "Hello, playground"

str.uppercased()

/**
 Soru işareti koymak demek , belki olur belki olmaz demek anlamına gelir.
*/
// initialize edilmemiş. Yani değeri yüklenmemiştir.
var str_2 : String?

str_2?.uppercased()

// bu örnek nil anlamına gelmemektedir.
var str_3 = ""

// ! işareti koymak demek, bu değer var ve olacak anlamına gelmektedir.

// ! vs ?

var myAge = "5"

// ! koyarsak 5 yerine karakter içerikli text'te konabilir.
// ? koyabiliriz. String olarak sayı olabilir diyoruz.

var myIntegerAge = (Int(myAge) ?? 0) * 5

var myAge_2 = "20"

if let myAgeLet  = Int(myAge_2){
    // Eğer ki çevirme işlemi başarılı olursa.
    print(myAgeLet * 5)
}else{
    print("Error")
}









