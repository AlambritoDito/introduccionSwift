import UIKit

let orangesAreOrange = true //Boleano

if orangesAreOrange { // == true
    print("si lo es")
}else{ // == false
    print("No lo es")
}


//Tuplas
let http404Error = (404, "Página no encontrada") //Aquí se define la tupla
let (statusCode, statusMessage) = http404Error //Se generan 2 constantes con los datos de la tupla
print("El código del estado es \(statusCode)")
print ("El mensaje del servidor es \(statusMessage)")

let (justStatusCode, _) = http404Error //Así podemos solo sacar una parte de una tupla, utilizando '_'
print(justStatusCode)
//Pero realmente no necesitamos crear variables para imprimir solo un dato de la tupla
print("El código del error es \(http404Error.0)")
//Pero aun podemos mejorar esto, poniendole nombres a estos 'atributos'
let http200Status = (statuscode: 200, description: "OK")
print("El código del estado es \(http200Status.statuscode)")//Así es mas facil recordarlo en el futuro
//Practicando

let humanAlan = (name: "Alan", age: 19 ,bornDay: 1038009600) //'bornDay' esta dado en tiempo unix

print("Me llamo \(humanAlan.name), tengo \(humanAlan.age) y naci (con la fecha en formato UnixTime) \(humanAlan.bornDay)")

/*En swift no existe nulos, es diferente, por ejemplo el null de python es un 'puntero' hacia
 un objeto concreto, no es que este vacio por si mismo, en Swift si esta vacio y se llama "nil"*/

let possibleAge = "18" //esta en string a proposito para hacer pruebas
let convertedAge = Int(possibleAge) //Int?, este es un entero "opcional" ya que en este caso da "nil"

var serverResponseCode: Int? = 404 //Cuando se agrega el '?' significa que es opcional
serverResponseCode = nil //Esto no me deja hacerlo Swift por que yo le dije que seria un Int, no un Int?

var surveyAnswer:String?
/*Esto del 'optional' puede llegar a complicarlo por que para estar seguro que no es un optional tendremos que hacer
un 'casting' o o un 'Force unwrapping' para que "funcione" como una variable "normal" */

//Force unwrapping

if convertedAge != nil {
    print("La edad del usuario no es nula: \(convertedAge!)")//Agregar el ! hace que lo convierta a int a fuerzas
} else{
    print("La edad del usuario es nula")
}

//Tener cuidado con el Force unwrapping, siempre utilizarlo dentro de un if para no provocar un error

//Optional Binding
/*Este no utiliza la fuerza bruta y así es como funciona: vamos a tener una varible optional y se va a crear una
 del mismo tipo que no lo sea, si este 'casting' es exitoso es por que no era 'nil'*/

//lo que dice esta estructura es 'si' se puede crear esta constante
if let actualAnswer = surveyAnswer {
    //Si se llega aquí, surveyAnswer != nil
    print("El string: \(actualAnswer)") //se utiliza el let creado aquí que ya es 'String'
}

if let firstNumber = Int("4"), //En swift para los if puedo poner ',' para hacer 'if anidados'
   let secondNumber = Int("42"),
   firstNumber < secondNumber && secondNumber < 100{
    print("\(firstNumber) < \(secondNumber) < 100")
}

//Unwraping implícito

let possibleString: String? = "Un string opcinal"
let forcedString: String = possibleString! //recuerda nunca hacer esto sin proteger con un if
//Como se hace una precondicion en 'assumedString' ya no se tiene que hacer la comprobacion en 'implicitString'
let assumedString: String! = "Un string unwrapped de forma implicita a partir de un optional"
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString!) //como el unwrapping se hace de forma implicita suponemos que no es necesario
}

if let definitiveString = assumedString {
    print(definitiveString)
}
//si imprimimos 'assumedString' solo nos dara el 'optional'
//print(assumedString)
/*Tener cuidado por que el paso entre nil y no nil, como el sistema lo hace en automatico puede ser que tenga
un error del que no nos demos cuenta */


