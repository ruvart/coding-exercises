/**
 * This is the solution for the Check permutation problem, in Swift
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */


import Foundation


func checkPermutation_1 (str_1:String, str_2: String) -> Bool {
    let str_len = str_1.count

    if str_len != str_2.count {
        return false
    }

    let chars_1 = str_1.sorted()
    let chars_2 = str_2.sorted()

    if chars_1 != chars_2 {
        return false
    }

    return true
}


func checkPermutation_2 (str_1:String, str_2: String) -> Bool {
    let str_len = str_1.count

    if str_len != str_2.count {
        return false
    }

    let chars_1 = str_1.sorted()
    let chars_2 = str_2.sorted()

    for i in 0...(str_len-1) {
        if ( chars_1[i] != chars_2[i] ) {
            return false
        }
    }

    return true
}


func checkPermutation_3 (str_1:String, str_2: String) -> Bool {
    let str_len = str_1.count

    if str_len != str_2.count {
        return false
    }

    let ordered_1 = String(str_1.sorted())
    let ordered_2 = String(str_2.sorted())

    if ( ordered_1 != ordered_2 ) {
        return false
    }

    return true
}


let str_1 = "1234567891011121314151617181920"
let str_2 = "1678011718191213149115162345120"
let str_3 = "1234567891011121314151617181920"
let str_4 = "1234567891022221314151617181920"
var ini:Int64
var fin:Int64
var result:Bool



print("checkPermutation_1\n\"\(str_1)\"\n\"\(str_2)\"\nResult:")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = checkPermutation_1(str_1:str_1, str_2:str_2)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n")
}
else {
    print("Not valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n")
}

print("checkPermutation_1\n\"\(str_3)\"\n\"\(str_4)\"\nResult:")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = checkPermutation_1(str_1:str_3, str_2:str_4)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n")
}
else {
    print("Not valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n\n")
}



print("checkPermutation_2\n\"\(str_1)\"\n\"\(str_2)\"\nResult:")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = checkPermutation_2(str_1:str_1, str_2:str_2)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n")
}
else {
    print("Not valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n")
}

print("checkPermutation_2\n\"\(str_3)\"\n\"\(str_4)\"\nResult:")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = checkPermutation_2(str_1:str_3, str_2:str_4)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n")
}
else {
    print("Not valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n\n")
}



print("checkPermutation_3\n\"\(str_1)\"\n\"\(str_2)\"\nResult:")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = checkPermutation_3(str_1:str_1, str_2:str_2)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n")
}
else {
    print("Not valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n")
}

print("checkPermutation_3\n\"\(str_3)\"\n\"\(str_4)\"\nResult:")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = checkPermutation_3(str_1:str_3, str_2:str_4)
fin = Int64(Date().timeIntervalSince1970 * 1000)
if result {
    print("Valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n")
}
else {
    print("Not valid permuted strings.\t Tiempo (milisec): " + String(fin - ini) + "\n\n")
}