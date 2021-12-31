import UIKit

//ciclo for-in

let names = ["Ricardo Celis","Juan Gabriel", "Alan Pérez"]

for name in names {
    print("Hola \(name)")
}

let numberOfLegs = ["Spider": 8, "ant": 6, "dog": 4]

for (animalName, legCount) in numberOfLegs{
    print("Animal: \(animalName), número de patas: \(legCount)")
}

for idx in 1...5{
    print("\(idx) x 3 = \(idx*3)")
}

let base = 2
let power = 10
var answer = 1

for _ in 1..<power{
    answer *= base
    print(answer)
}

print("la respuesta es:",answer,"bien?")//otra forma de imprimir variables sin \()

let hour = 9
let minutes = 60
let minuteInterval = 5
for tickMark in 0..<minutes{//esto es para que cuente minuto a minuto
    print(hour,":",tickMark)
}
print("--------------------------------")//Stride sirve para solo contar algunas en especifico
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){//esto es para que cuente cada 5 minutos
    print(hour,":",tickMark)
}

let newHour = 24
let newMinute = 60
let hourInterval = 3
for tickMark in stride(from: 3, to: newHour + 1, by: hourInterval){//le puse el + 1 para que imprimiera el 24
    print("La hora es: \(tickMark) con \(newMinute) minutos")
}

//Ciclo While ---------------------------------------------------------------------------------------------------

var i = 0

while i < 10{
    i += 1
    print(i)
}

//repeat while, es lo mismo que un do while

repeat{
    i += 1
}while i <= 10

print(i)

//imprime todos los numeros primos del 2...100
print("Numeros primos del 2 al 100")

var number:Int8 = 2
var divisor:Int8 = 2

while number <= 100{
    var isPrime = true //Aquí se asumira que es primo, a menos que se demuestre lo contrario
    while (isPrime) && (number != divisor){
        isPrime = (number % divisor != 0)//Aquí se prueba si el numero es divisible entre otro, si es así no es primo
        divisor += 1
    
    }
    divisor = 2
    if isPrime{
        print(number, separator: "", terminator: " ")
    }
    number += 1 //Se checa el proximo numero
}
    
//If y Else -----------------------------------------------------------------------------------
var temp = 18
if temp <= 15{
    print("Hace frío! Enciende la calefacción")
}else if temp >= 25{
    print("Hace calor! Encendamos el aire acondicionado")
}else{
    print("La sensación térmica es agredable. No hace falta modificarla")
}

//Switch----------------------------------------------------------------------------------------
let someCharacter: Character = "Z"
switch someCharacter{
case "a","A":
    print("Es la primera letra del alfabeto")
case "z","Z":
    print("Es la última setra del alfabeto")
default:
    print("Es otra letra")
}
//es o no es una vocal

let anotherSomeCharacter: Character = "u"
switch anotherSomeCharacter{
case "a","A","e","E","i","I","o","O","u","U":
    print("Es una vocal")
default:
    print("No es una vocal")
}

//Switch con tuplas-----------------------------------------------------------------------------

let somePoint = (1,0)
switch somePoint{
case (0,0):
    print("El punto \(somePoint) es el origen de cordenadas")
case (_,0):
    print("El punto \(somePoint) se halla sobre el eje de las X")
case (0,_):
    print("El punto \(somePoint) se halla sobre el eje de las Y")
case (-2...2, -2...2):// de -2 hasta 2
    print("El punto\(somePoint) se halla en el interior del cuadrado de lado 4")
default:
    print("El punto \(somePoint) está en algún otro lado")
    
}

let anotherPoint = (2,-2)
switch anotherPoint{
case (let x, 0)://estan sobre x por que el 2do valor es 0
    print("Sobre el eje de las X, con valor \(x)")
case (0, let y)://estan sobre y por que el 2do valor es 0
    print("Sobre el eje de las Y, con valor \(y)")
case let(x,y) where x == y:// si x == y se ejecuta esto
    print("El punto se halla sobre la recta x = y")
case let(x,y) where x == -y:// si x == -y se ejecuta esto
    print("El punto se halla sobre la recta x = -y")
case let (x,y): //seria un default 'mas bonito'
    print("En algún otro lugar del plano, en (\(x), \(y))")
    //en este caso no se necesita un default por que nunca se ejecutaria
}


//Switch con casos compuestos-----------------------------------------------------------------------------

let stillAnotherPoint = (9,0)
switch stillAnotherPoint{
case(let distance,0),(0, let distance)://En este caso es mejor que un if, ya que es mas eficiente
    print("Se halla sobre el eje, a distancia \(distance) del origen")
default:
    print("No está sobre el eje")
}

//Control Transfer Sentences - continue, break , fallthrough, return, throw-------------------------------
//Continue y breake
let sentence = "Las mentes grandes piensan similar"
var filteredSentence = ""
let charactersToRemove:[Character] = ["a","e","i","o","u"]
//así los podria imprimir hacia abajo
for ch in sentence{
    if charactersToRemove.contains(ch){
        continue//hace que pase a la siguiente iteracion del ciclo for
    }
    filteredSentence.append(ch)
    if ch == "d"{
        break//acaba con el ciclo for
    }
}
filteredSentence

//Fallthrough---------------------------------------------------------------------------------------------
//En swift cuando se entra a un caso en un switch, el resto ya no se checa
//Fallthrough permite que pueda "pasar la pelota al siguiente"
let integerToDescribe = 4
var description = "El número \(integerToDescribe) es un número "
switch integerToDescribe{
case 2,3,5,7,11,13,17,19:
    description += "primo y un número "
    fallthrough
default:
    description += "entero"
}
print(description)

//Return y guard-----------------------------------------------------------------------------------------
//la parte final 'as [String:Any] sirve para que pueda poner valores de diferentes tipos en un diccionario
var people = ["name": "Juan Gabriel", "age":31, "isMale": true] as [String:Any]

/*if let surname = people["name"]{//casting seguro para que no quedara en nil
    print(surname)
}*/ //esto lo quite por que la forma correcta seria la de abajo
//guard sirve para hacer un tipo de 'if' para estos casos y tiene que ser acompañado por un else

//podemos decir que un guard es como un string pero al reves
func testUserValidation(person:[String: Any]){
    guard let surname = person["surname"] else{
        return
    }
    //Aquí ya existe el surname
    print(surname)
    guard let age = person["age"] else{
        print("La edad es desconocida")
        return
    }
    print("la edad de la persona es \(age)")
}

testUserValidation(person: people)


//Available en API: Manejo de versiones--------------------------------------------------------------

if #available(iOS 12, macOS 10.12 *){
    //Ejecutar las acciones a lo iOs 12+, a los macOS12+
}else{
    //Mantener el código viejo con versiones anteriores de iOS, macOS...
}
    
