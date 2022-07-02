/**
 * This is the solution for the Is unique problem, in Swift
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */


import Foundation



func isUnique_1(str: String) -> Bool {
    let str_len = str.count

    if ( str_len < 2 ) {
        return true
    }

    for x in 1...(str_len-1) {
        if ( str[str.index(str.startIndex, offsetBy: x)...].contains(str[str.index(str.startIndex, offsetBy: x-1)]) ) {
            return false
        }
    }

    return true
}


func isUnique_2(str: String) -> Bool {
    let str_len = str.count

    if ( str_len < 2 ) {
        return true
    }

    let chars = str.sorted()

    for i in 1...(str_len-1) {
        if ( chars[i-1] == chars[i] ) {
            return false
        }
    }

    return true
}


func isUnique_3(str: String) -> Bool {
    let str_len = str.count

    if ( str_len < 2 ) {
        return true
    }

    var str_distinct = ""
    str_distinct = str.reduce(str_distinct) { (result, char) -> String in
        if result.contains(char) {
            return result
        }
        else {
            return result + String.init(char)
        }
    }

    if ( str_distinct.count != str_len ) {
        return false
    }

    return true
}


func isUnique_4(str: String) -> Bool {
    let str_len = str.count

    if ( str_len < 2 ) {
        return true
    }

    let str_distinct = Set(str)

    if ( str_distinct.count != str_len ) {
        return false
    }

    return true
}



let str_1 = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit"
let str_2 = "abcdefghijklmnopqrstuvwxyz "

var ini:Int64
var fin:Int64
var result:Bool



print("isUnique_1 - (\(str_1.count)) \"\(str_1)\":\n")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = isUnique_1(str:str_1)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}
else {
    print("No son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}


print("isUnique_1 - (\(str_2.count)) \"\(str_2)\":\n")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = isUnique_1(str:str_2)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}
else {
    print("No son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}



print("isUnique_2 - (\(str_1.count)) \"\(str_1)\":\n")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = isUnique_2(str:str_1)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}
else {
    print("No son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}


print("isUnique_2 - (\(str_2.count)) \"\(str_2)\":\n")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = isUnique_2(str:str_2)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}
else {
    print("No son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}



print("isUnique_3 - (\(str_1.count)) \"\(str_1)\":\n")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = isUnique_3(str:str_1)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}
else {
    print("No son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}


print("isUnique_3 - (\(str_2.count)) \"\(str_2)\":\n")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = isUnique_3(str:str_2)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}
else {
    print("No son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}



print("isUnique_4 - (\(str_1.count)) \"\(str_1)\":\n")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = isUnique_4(str:str_1)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}
else {
    print("No son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}


print("isUnique_4 - (\(str_2.count)) \"\(str_2)\":\n")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = isUnique_4(str:str_2)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}
else {
    print("No son caracteres únicos.\t Tiempo (milisec): " + String((fin - ini)) + "\n\n")
}