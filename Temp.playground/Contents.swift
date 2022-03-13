//struct ChatView{
//
//    // Properties
//    var message = ""
//    var messageWithPrefix:String {
//        return "Chris Says: " + message
//    }
//
//    //view code for this screen
//
//    // Methods
//    func sendChat() {
//
//
//        //code to send the chat message
//        print(messageWithPrefix)
//    }
//
//    func deleteChat() {
//        print(messageWithPrefix)
//    }
//}

struct DatabaseManager {
    
    private var serverName = "Server 1"
    
    func saveData(data:String)->Bool {
        //this code save the data and returns a boolean result
        return true
    }
}

struct ChatView {
    var message = "Hello"
    
    func sendChat() {
        var db = DatabaseManager()
        let successful = db.saveData(data: message)
        
    }
}
//
//var a:MyStructure = MyStructure()
//a.message = "Haii"
//a.MyFunction()
//
//var b = MyStructure()
//b.message = "World"
//print(b.message)

//variable -> var (nilai dapat diubah)
//konstanta -> let (nilai tetap atau konstan / tidak dapat diubah2)

var greeting = "Hello, playground"

let str = "Hello, Dicoding!!!"

let userTuples = ("Stefanus Hermawan", "28 Februari 2001", 085945095662)

let maximumNumberOfLoginAttempts = 10 //nilai maksimum
var currentLoginAttempt = 0 //jumlah upaya login yang telah dilakukan

//dapat juga mendeklarasi multi konstanta atau multi variabel
var x = 0.0, y = 0.0, z = 0.0

//anotation type untuk mendeklarasi sebuah konstanta atau variable dengan tujuan menjelaskan tipe datanya dengan menggunakan tanda titik dua ":"
var welcomeMessage: String
welcomeMessage = "Hello Bear!"

var red, green, blue : Double

//catatan bahwa kita dapat memberikan nama konstantya dan variabel dengan semua karakter termasuk unicode kayak tulisan mandarin dll, atau symbol math, dll
var friendlyWelcome = "Hello!"
friendlyWelcome = "Changed Var"
print(friendlyWelcome)

print(1.0, 2.0, 3.0, 4.0, 5.0)
print(1.0, 2.0, 3.0, 4.0, 5.0, separator: "|")

for i in 1...5{
    print(i, terminator: " ")
}

//string interpolation untuk membangun string baru yang terdiri dari konstanta, variabel, nilai lateral, atau ekspresi nilai string literal didalamnya. dimana diawali dengan "\"
print("\nThe current value of friendlyWelcome is \(friendlyWelcome)")

//integer -> ada 2
// 1. signed = bernilai positif, nol, atau negatif
// 2. unsigned = bernilai positif atau nol
//untuk mengakses nilai max dan min setiap nilai integer dapat menggunakan properti min dan max
let minValue = UInt8.min
print(minValue) //minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max
print(maxValue) //maxValue is equal to 255, and is of type UInt8

//float dan double
let apple = 3.5
let banana : Double = 4.1
let manggo : Float = 2.4

//numeric literal
//decimal tanpa awalan
//biner dengan awalan 0b
//oktal dengan awalan 0o
//heksadecimal dengan awalan 0x
let decimalInteger = 18
print("nilai decimalInteger adalah \(decimalInteger)")

let binaryInteger = 0b10010
print("nilai binaryInteger adalah \(binaryInteger)")

let octalInteger = 0o22
print("nilai octalInteger adalah \(octalInteger)")

let hexadecimalInteger = 0x12
print("nilai hexadecimalInteger adalah \(hexadecimalInteger)")

let decimalExponen = 1.25e2
print("1.25e2 berarti 1.25 x 10 pangkat 2 atau \(decimalExponen)")

let anotherDecimalExopnen = 1.25e-2
print("1.25e-2 berarti 1.25 x 10 pangkat -2 atau \(anotherDecimalExopnen)")

let hexadecimalExponen = 0xFp2
print("0xFp2 berarti 15 x 2 pangkat 2 atau \(hexadecimalExponen)")

let anotherHexadecimalExponen = 0xFp-2
print("0xFp-2 berarti 15 x 2 pangkat -2 atau \(anotherHexadecimalExponen)")

//coba menampilkan nilai decimal 12,1875 dengan menggunakan floating point literal
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

//perlu diketahui bahwa format numeric literal dapat berisi beberapa tambahan komponen agar mudah dibaca
let paddedDouble = 000123.456 //123.456
let oneMillion = 1_000_000 //1000000
let justOverOneMillion = 1_000_000.000_000_1 //1000000.0000001

//integer and floating conversion
let three = 3
let pointOneFourOneFifeNine = 0.14159
let pi = Double(three) + pointOneFourOneFifeNine
print("Nilai pi adalah \(pi), dan ini didefinisikan menjadi tipe double")
let integerPi = Int(pi)
print("Nilai integerPi adalah \(integerPi), dan ini didefinisikan menjadi tipe integer")

//type aliases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max
print("maxAmplitudeFound mempunyai nilai \(maxAmplitudeFound)")

//boolean
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious{
    print("Mmmm, lobaknya lezat")
}else{
    print("Ewww, lobaknya tidak enak")
}

let i = 2
if i==1{
    print("nilai i = 1")
}else{
    print("nilai i != 1")
}

//tuple
let http404Error = (404, "Not Found!")
print("http404Error memiliki tipe (Int, String) dan berisi \(http404Error).")
//kita juga dapat menguraikan tuple menjadi konstanta dan variabel yang terpisah
let (statusCode, statusMessage) = http404Error
print("http404Error memiliki statusCode \(statusCode)")
print("http404Error memiliki statusMessage \(statusMessage)")
//jika hanya memerlukan beberapa nilai tuple saja, maka kita dapat mengabaikan bagian tuple lain dengan garis bawah atau underscore saat menguraikannya (_)
let(justTheStatusCode, _) = http404Error
print("http404Error memiliki statusCode \(justTheStatusCode)")
//dapat juga mengakses nilai secara individual dalam tuple menggunakan urutan indeksnya. dimana index dimulai dari 0
print("http404Error memiliki statusCode \(http404Error.0)")
print("http404Error memiliki statusMessage \(http404Error.1)")
//kita juga dapat memberikan nama ke masing masing elemen tuple
let http200Status = (statusCode:200, description:"OK")
print("http200Status memiliki statusCode \(http200Status.0)")
print("http200Status memiliki description \(http200Status.1)")

//optional -> null atau tidak null
let possibleNumber = "123"
//let convertedNumber = Int(possibleNumber)
//convertedNumber disimpulkan sebagai "int?" atau "optional int"

var convertedNumber: Int? = 123
//convertedNumber = nil
if convertedNumber != nil {
    print("convertedNumber memiliki sebuah nilai integer, yaitu \(convertedNumber!)")
}else{
    print("nil bro!")
}

//optional binding
if let actualNumber = Int(possibleNumber){
    print("String possing number memiliki nilai string \"\(possibleNumber)\" dan dapat dikonversi menjadi nilai integer \(actualNumber)")
}else{
    print("String possing number memiliki nilai string \"\(possibleNumber)\" dan tidak dapat dikonversi menjadi nilai integer")
}

if var actualNumber = Int(possibleNumber){
    actualNumber = 321
    print("String possing number memiliki nilai string \"\(possibleNumber)\" dan dapat dikonversi menjadi nilai integer, lalu nilainya diubah menjadi \(actualNumber)")
}else{
    print("String possing number memiliki nilai string \"\(possibleNumber)\" dan tidak dapat dikonversi menjadi nilai integer")
}

if let fistNumber = Int("4"), let secondNumber = Int("42"), fistNumber < secondNumber && secondNumber < 100{
    print("\(fistNumber) < \(secondNumber) < 100")
}
//atau
if let firstNumber = Int("4"){
    if let secondNumber = Int("42"){
        if firstNumber < secondNumber && secondNumber < 100{
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

//Error Handling
func canThrowAnError() throws{
    //function ini memicu kesalahan
}

do {
    try canThrowAnError()
    //tidak terjadi kesalahan
    print("tidak error")
}catch{
    //terjadi kesalhan
    print("error")
}

//looping
//for loop
let students = ["Michael", "Stefanus", "Hermawan", "Sebastian"]
//remove Michael
for student in students where student != "Michael"{
    print(student)
}

// while loop
var index = 5

while index < 9 {
   print( "Value of index is \(index)")
   index = index + 1
}

//function
func multiplication(_ a: Int,_ b: Int) {
  var mul = a * b
  print("result:", mul)
}

multiplication(5, 7)

//collection types
//array
var belanja: [String] = ["Nasi goreng", "Telur", "Sabun"]
print("Belanja \(belanja.count) items")
//sets
var belanja2: Set = ["Shampoo", "Odol", "Topi"]
if belanja2.isEmpty {
    print("Kosong Mas")
}else{
    print("Ready Mas")
}
//dictionary
var barang: [String: String] = ["AQ": "Aqua", "LE": "Leminerale"]
print(barang["AQ"]!)

//Methods
struct Makanan {

    let lamaMemasak: Int

    func masak() {
        print("memerlukan waktu memasak selama \(lamaMemasak) menit")
    }

}
// makanan
let makanan = Makanan(lamaMemasak: 20)
// masak
makanan.masak()

//inheritance
class Hewan {
 // Metode di dalam superclass
 func makan() {
   print("Saya bisa makan")
 }
}
// Kucing inherits Hewan
class Bebek: Hewan {
  // overriding metode makan()
  override func makan() {
    print("Saya makan makanan unggas")
  }
}
// membuat sebuah objek dari subclass
var bek =  Bebek()
// memanggil metode makan()
bek.makan()

//enumeration
enum siswa {
   case Ganteng
   case Jelek
}
var student = siswa.Ganteng
switch student {
   case .Ganteng:
      print("stefanus")
   case .Jelek:
      print("hermawan")
   default:
      print("sebastian")
}

//class and struct
//class -> passed by reference -> SALING BERHUBUNGAN
class test{
    var x: Int = 0
}
let test1 = test()
test1.x = 5
print("test1: \(test1.x)")
let test2 = test1
test2.x = 10
print("test2: \(test2.x)")
print("test1: \(test1.x)")
print("test2: \(test2.x)")
//struct -> passed by value -> TERPISAH
struct testa{
    var x: Int = 0
}
var testa1 = testa()
testa1.x = 5
print("test1: \(testa1.x)")
var testa2 = testa1
testa2.x = 10
print("test2: \(testa2.x)")
print("test1: \(testa1.x)")
print("test2: \(testa2.x)")



