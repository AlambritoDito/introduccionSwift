import UIKit

//Array
//Conjuntos
//Diccionarios


//ARRAY
var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count
someInts = []
someInts.count
//inicializar con valores repetidos
var someDoubles = Array(repeating: 3.1416, count: 7)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)

var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

var shoppingList : [String] = ["Papas", "Pimiento", "Tortillas", "Cerdo", "Cebolla"]

shoppingList.count

//Acceder y modificar elementos de un Array

if shoppingList.isEmpty{
    print("La lista de la compra está vacía")
}
//agregar elementos
shoppingList.append("Coca Cola")
shoppingList.count

shoppingList += ["Totopos", "Guacamole", "Pico de gallo"]
shoppingList.count

var firstElement = shoppingList[0]
shoppingList[0] = "Huevos"
shoppingList
shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Plátano", "Mango"]
shoppingList

//eliminar elementos

let pepper = shoppingList.remove(at: 1)
shoppingList

let _ = shoppingList.removeLast()
shoppingList

/*pilas o colas
 colas: el ultimo que entra es el ultimo que sale
 pilas: el que sale es el ultimo que entro */

//Iterando en Arrays--------------------------------------------------------

for item in shoppingList{
    print(item)
}
//esta tupla guarda en 'idx' el objeto de posición y el item, enumerated
for (idx, item) in shoppingList.enumerated(){
    print("Item\(idx+1) : \(item)")
}
//Conjuntos (set)------------------------------------------------------------------
//En los conjuntos no se debe agregar un objeto más de 1 vez, al igual que no hay un orden

var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("h")
letters.insert("b")
letters

var favouriteGames : Set<String> = ["Final Fantasy", "World of Warcraft", "Farcry"]
//en caso de que estuviera vacio
if favouriteGames.isEmpty{
    print("No hay juegos favoritos")
}
//insertar
favouriteGames.insert("Metal Gear")
//remover opción 1
if let removedGame = favouriteGames.remove("Farcry"){ //Se crea así para que removedGame no quede como nil
    print("He eliminado de la lista \(removedGame)")
}
//remover opción 2
if favouriteGames.contains("Metal Gear"){
    print("Me encanta ese juego") //aquí solo se pondria el remove
}

for vg in favouriteGames.sorted() { //.sorted es para traerlos en orden creciente
    print(vg)//aquí como  no hay orden, los imprime como sea
}

favouriteGames
favouriteGames.insert("Metal Gear") //Si intentamos insertar algo que ya esta,no lo hara
//Iteraciones y operaciones sobre conjuntos------------------------------------------

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primeNumbers: Set = [2,3,5,7] //el 1 no es primo

//A union B = elementos que son o bien de A, o bien de B o de los dos
oddDigits.union(evenDigits).sorted() //Esto hizo una union de pares e impares
//A intersección B = elementos que son a la vez de A y de B
oddDigits.intersection(evenDigits) //Como no existe algun elemento que este en las 2 al mismo tiempo, esta vacio
evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()
//A - B = elementos que son de A pero no de B
//saca todos los digitos que esten en otro grupo
oddDigits.subtracting(primeNumbers).sorted()//imprime todos los numeros impares que no son primos
// A + B = (A-B) union (B-A)
oddDigits.symmetricDifference(primeNumbers)//numeros pares que no son primos y primos que no son pares

//Aquí tambien hay sub conjuntos

let houseAnimals:Set = ["🐶", "😹"]
let farmAnimals:Set = ["🐮","🐔", "🐑","🐶", "😹"]
let cityAnimals:Set = ["🐁","🪰"]

houseAnimals.isSubset(of: farmAnimals)//Animales de casa es un sub-conjunto de animales de granja? true
farmAnimals.isSuperset(of: houseAnimals) //De granja es un super conjunto de animales de casa? true
//Son disjuntos(distintos): A y B son disjuntos si su intersección es vacía
farmAnimals.isDisjoint(with: cityAnimals)
//Diccionarios-----------------------------------------------------------------------------------------
//cada objeto tiene una clave y un valor [k1:v1, k2,v2, ...]
var nameOfIntegers = [Int: String]()//Diccionario vacio
nameOfIntegers[15] = "quince" //asignar un valor
nameOfIntegers = [:]//vaciar un dicconario

var airports: [String: String] = ["YYZ": "Toronto",
                                  "DUB": "Dublin",
                                  "PMI": "Palma de Mallorca",
                                  "GDL": "Guadalajara"

]
//contarlos
airports.count
//ver si esta vacio
airports.isEmpty
airports["LHR"] = "London City Airport"//si te equivocas lo puedes modificar
airports
airports["LHR"] = "London Heathrow"
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("El aeropuerto tenia antiguamente el nombre de \(oldValue)")
}
airports
//si existe la clave 'DUB' en el diciconario entonces
if let airportName = airports["DUB"]{
    print("El aeropuerto de DUB es: \(airportName)")
}
//remover valores
airports["PMI"] = nil
airports
if let removedAirport = airports.removeValue(forKey: "DUB"){
    //usar la variable removed airport
    removedAirport
}
airports

//Iteración en diccionarios-----------------------------------------------------------------------------
//clave valor
for (key, value) in airports{
    print("\(key) - \(value)")
}
//Solo clave
for airportKey in airports.keys{
    print(airportKey)
}
//Solo valor
for airportName in airports.values{
    print(airportName)
}

//Meter valores de un diccionario en arrays

let airportKeys = [String](airports.keys)
let airportNames = [String](airports.values)

//La lista de contactos en la aplicación contactos es un array
//post normalmente es que sea un conjunto para que no salgan repetidos

