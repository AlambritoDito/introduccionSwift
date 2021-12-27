import UIKit
//Operaciones de asignación y aritmeticas
//Existen 3 tipos de operadores: 1-Unarios, 2-Binarios, 3-Binarios

let b = 10
var a = 5
a = b

let (x,y) = (1,2)

if a == b {
    print("Los valores de a y b son iguales")
}

1+2
5-3
2*3
10.0/2.5

"Hello " + "world"//Concatenar

//D/d -> D == d*c+r esta es la formula de euclides
9/4 //2.25 pero da 2 c
9%4 //r
//probando la formula de arriba
9 == 4*2+1

-9%4 // -9 == -2*4 + (-1)

//unario
let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3 //number = number + 3
number -= 2 //number = number - 3
//así se puede hacer con todas las operaciones

//Comparaciones ---------------------------------------------

//Se pueden hacer 6 comparaciones

1 == 1 //comparación igualdad
1 == 2

1 != 2 //diferencia

1 < 2 //mayor o menor
1 > 2

1 >= 2
1 <= 2

let name = "Alan Pérez"

if name == "Alan Pérez"{
    print("Bienvenido \(name), eres invitado a la fiesta")
}else{
    print("No apareces en la lista de la fiesta")
}

(1, "Alan Pérez") < (2, "Juan Gabriel")
(3, "Zlan Pérez") < (3, "Juan Gabriel") //Aparece false por que la J esta antes que la Z

(4, "Perro") == (4, "Perro")

//("perro", false) < ("perro", true) //no se puede comparar los booleanos con < o >

//Operaciones Ternarias -----------------------------------------------------------------

 /*
  if question {
     answer1
  } else{
    anwer2
  }
  */

let contentHeight = 40
var hasImage = true
var rowHeight = 0
//Esto se puede resumir utilizando el operador ternario
if hasImage {
    rowHeight = contentHeight + 50
}else{
    rowHeight = contentHeight + 10
}
// ==
rowHeight = contentHeight + (hasImage ? 50 : 10)

//operador nil coalescing, este lo podemos usar la mayoria de veces que tengamos un nil

let defaultAge = 18
var userAge: Int?

var agoToBeUsed = userAge ?? defaultAge
// ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

let defaultColorName = "red"
var userColorName: String?

var colorNameToUse = userColorName ?? defaultColorName
//Esto sirve para tener "defaults" y hacer el codigo mas robusto
let defaultUserName = "Brito"
var userName: String?

userName = "Alan'"
var userNameToBeUsed = userName ?? defaultUserName

//Rangos ----------------------------------------------------------------------------

for idx in 1...5 {//Cerrado, incluye inicio y final
    print(idx)
}

for idx in 1..<5{//Semi-abierto, incluye el de inicio pero no el final
    print(idx)
}

let names = ["Ricardo", "Juan Gabriel", "Pedro"]
for i in 0..<names.count{//Levando acabo un conteo explicito
    print("La persona \(i+1) se llama \(names[i])")
}

//Abiertos
for name in names[0...]{ //Del 0 en adelante
    print(name)
}
print("Inicia el siguiente for: ")

for name in names[...2]{ //de atras hasta el 2
    print(name)
}

//Rangos
let range = ...5 // -infinity...5
range.contains(7)
range.contains(4)
range.contains(-2)

//Operadores lógicos -----------------------------------------------------------------
//Cuando se creen variables booleanas siempre hacerlas con nombre en positivo

//Not !
let allowEntry = false
if !allowEntry{//Esto es una buena practica por que facilita la lectura
    print("Acceso denegado")
}

//And &&
let enterDoorCode = true
let passRetinaScan = false

if enterDoorCode && passRetinaScan{
    print("Bienvenido a la empresa")
}else{
    print("Acceso denegado")
}

//Or ||

let hasMoney = true
let hasInvitation = false

if hasMoney || hasInvitation{
    print("Bienvenido a la fiesta")
}else{
    print("No eres bienvenido aquí")
}

//concatenando operadores

if enterDoorCode && passRetinaScan || //Algebra booleana
    hasMoney || hasInvitation{
    print("Has entrado")
}else{
    print("Acceso denegado")
}

//Practica

let haveMac = true
let knownSwift = true
let haveTimeToDevelop = true

if haveMac && (knownSwift || haveTimeToDevelop){
    print("Lograste hacer una aplicación")
}else{
    print("Error")
}
