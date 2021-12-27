import UIKit

func canThrowError() throws{ //La palabra reservada throws permite que algo falle y lanzare un error
    //Aquí hay codigo que puede causar un error
}

//Para utilizar try and catch necesitas rodearlo con un do
do{
    try canThrowError()
    //Si llegamos aquí, no ha habido errores
}catch{
    //Si llegamos aquí, ha habido un error
}



func makeASandwich() throws{
    
}

do{
    try makeASandwich()
}catch{
    //Tengo platos limpios... -> lavar los platos
    //Tengo ingredientes -> Ir a hacer la compra
    //Tengo hambre -> esperar dentro de una hora
}


//Aserciones (debug) y precondiciones (build), estas estan activas en tiempo de ejecución

//Aserciones
let age = -5 //-10
//assert(age >= 0, "La edad de una persona no puede ser negativa") //Assertion failed
//aquí el código sigue

//Precondicion
if age > 10{
    print("Puedes subir a la montaña rusa")
}else if age >= 0{
    print("Eres demasiado pequéño para subir a la montaña rusa")
}else{
    assertionFailure("La edad de una persona no puede ser negativa")
}


