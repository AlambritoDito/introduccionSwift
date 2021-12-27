import UIKit

//Integer
let age : UInt8 = 31 //Así solo gasta 8 byts en vez de 64
//ver el valor minimo de un Int, estos no tienen valores negativos
let minValue = UInt8.min //2^0-1
//Maximo
let maxValue = UInt8.max //2^8-1

let minValueInt = Int8.min //-128

let maxValueInt = Int8.max //127, no llega a los 128 por el que se pierde en '0'

print("El valor minimo de un 'Int8' es: \(minValue) y el maximo es: \(maxValue)")

let f1: Float = 3.14159265 //en defecto esta como double, un float tenemos apriximadamente 6 cifras decimales, double son 15/16
let d1: Double = 3.14159265

let meaningOfLife = 42 //Int64
let pi = 3.14159 //Double64
let anotherPi = 3 + 0.14159 //Permite sumar double más Int
//Se puede escribir con diferentes sistemas numericos
let decimalInteger = 17 //Decimal
let binaryInteger = 0b10001 //Binario
let octalInteger = 0o21 //Octal
let hexadecimalInteger = 0x11 //Hexadecimal

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1 //el 'e1' da un exponente
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456//Se pueden agregar 0 a la izquierda y no modifican nada
let someNumber = 00000097.54

let oneMillon = 1_000_000 //Tambien se pueden poner barras bajas sin problema
let justMoreThanAMillion = 1_000_000.000_000_1 //Tambien se puede con decimales

//ERRORES DE TIPO DE DATO
//let cannotBeNegative: Uint8 = -1 esto da un error por que Uint no puede ser negativo
//let tooBig: Uint8 = Uint8.max + 1 este da un error por que se pasa del maximo

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
//No se pueden sumar estos 2 por que tienen diferente tipo de dato
//let twoTHousandAndOne = twoThousand + one

//Solución se hace un 'casting' de 8 a 16 para poder hacer la suma
let twoThousandAndOne = twoThousand + UInt16(one)

//Typealias
typealias AudioSample = UInt16 //Esto sirve por si en alguna actualizacion se actualizara a 32 solo se tenga que cambiar una linea

var maxAmplitude = AudioSample.max //Uint16.max

