import UIKit
//Crear funciones
/*func nombre(entrada) -> salida{
    cuerpo
    return
 }*/
func greeting(person: String) -> String {// el '-> String' sirve para saber que es lo que va a devolver
    let greet = "Hola, \(person)!"
    return greet
}
//ejecutar funciones
greeting(person: "Alan Pérez")
greeting(person: "Brito")

//Parametros de entrada------------------------------------------------------------------------------------

func sayHelloWorld() -> String {
    return "Hello World"
}

print(sayHelloWorld())

func greeting(person: String, isMale:Bool) -> String{
    if(isMale){
        return "Bienvenido caballero \(person)"
    }else{
        return "Bienvenida Señorita \(person)"
    }
}

greeting(person: "Alan Pérez", isMale: true)
greeting(person: "Michell", isMale: false)

func greetingByAlan(person: String, isMale:Bool, age:Int8) -> String{
    let allData = (person,isMale,age)
    switch allData{
    case(_,true,1...30)://que sea hombre y tenga entre 1 a 30 años
        return("Hola Joven \(person)")
    default:
        return("No tenemos saludo para usted, disculpe la molestia")
        //TODO: terminar más saludos
    }
}


print(greetingByAlan(person: "Alan", isMale: true, age: 19))
