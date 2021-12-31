import UIKit

//UniCode es el actual estandar para caracteres

//String literal
let someString = "Soy un string cualquiera"

//Poner '\' hace que no funcione el salto de linea
let multiLineString = """
        Soy un Stream que se puede escribir en varias lineas\
        mira
        wow, comes rapidisimo, como le haces?...
    """



print(multiLineString)
//Para escribir comillas dobles dentro de un string
let wiseWords = "\"La Imaginación es más importante que el saber\" - Albert Einstein"
//Con UniCode
let dolarSign = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"

let mexicoFlag = "Soy Alan Pérez de México 🇲🇽"
print(mexicoFlag)

//Crear Strings vacios
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty{
    print("El tring 'emtyString' esta vacio")
}

var newSomeString = "Un caballo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"

//Tipos evaluados: Modificar una variable no modifica a otra, tanto sea copio o original

var a = "A"
var b = "B"
b = a
print("a vale \(a) y b vale \(b)") //Solo le cambia el valor de b, deja la otra variable inmutable


//Character ---------------------------------------------------------------------------------------

let name = "Alan Pérez 🤠"
//ver que caracteres tiene un string
for character in name{
    print(character)
}

//Ver cantidad
print(name.count)
//Definir Character
let exclamationMark : Character  = "!"
//Transformar un array de caracteres a string
let nameChars: [Character] = ["A","l","a","n"]
var nameString = String(nameChars)

//nameString + exclamationMark no se puede concatenar un character a String
//Para hacer una concatenación se puede pasar por casting o hay otra forma
nameString.append(exclamationMark)//Este es el metodo para agregar

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)"
message.append(exclamationMark) //Esto se tiene que hacer en 2 lineas, por que en 1 no te deja cambiar algo que aun no creas

//Tabla de multiplicar del 7
let seven = 7
for i in 1...10{
    print("7*\(i)= \(i*seven)")
}
//Indices de strings

let greeting = "Hola, Qué tal?"
greeting[greeting.startIndex] //obtenemos el primer caracter
//greeting[greeting.endIndex] //error por que es el final -1
greeting[greeting.index(before: greeting.endIndex)]
//Ver los indices
for idx in greeting.indices{
    print("\(greeting[idx]) - \(idx)")
}

//insertar algo en un string
var welcome = "Hola"

welcome.insert("!",at: welcome.endIndex)
welcome.insert(contentsOf: " que tal",
               at: welcome.endIndex)
//Remover algo de un string
welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome //eliminamos el ultimo caracter

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex //este rango elimina 6 caracteres antes del final de la palabra
welcome.removeSubrange(range)

//Substrings------------------------------------------------------------
//Un substring es un string mas pequéño que el original

//como encontrar la coma de un string
greeting
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<index]//el string hasta encontrar la primera ','
//el substream no funciona igual que un string normal, ya que este solo almacena a que posiciónes de memoria hace referencia
let newString = String(firstPart)//casting para hacer lo un string normal
//Prefijos y sufijos-------------------------------------------------------
let newGreeting = "Hola, soy Alan Pérez"
//prefijo
newGreeting.hasPrefix("Hola")
//sufijo
newGreeting.hasSuffix("z")

//utilidad

//saber cuantas escenas tiene el act 1
let collection = [
"Act 1 Scene 1", "Act 1 Scene 2", "Act 1 Scene 3",  "Act 1 Scene 4", "Act 1 Scene 5",
"Act 2 Scene 1", "Act 2 Scene 2", "Act 2 Scene 3",
"Act 3 Scene 1", "Act 3 Scene 2"
]

var act1SceneCount = 0
for scene in collection{
    if scene.hasPrefix("Act 1"){
        act1SceneCount += 1
    }
}

print("El numero de escenas del acto 1 es: \(act1SceneCount)")

//Representaciones Unicode------------------------------------------------------

let ghost = "Fantasmas!!! 👻"
//Representacion de el string 'ghost' en utf8
for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}
print(" ")
//utf16
for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}
print(" ")
for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}


//Unicode actualmente es el Standar mundial ya que permite
