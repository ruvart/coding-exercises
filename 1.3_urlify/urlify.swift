/**
 * This is the solution for the urlify problem, in Swift
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */


import Foundation


func urlify_1(str:String) -> String {
    return str.components(separatedBy: " ").joined(separator: "%20")
}


func urlify_2(str:String) -> String {
    return str.replacingOccurrences(of: " ", with: "%20")
}


func urlify_3(str:String) -> String {
    var result = ""

    for x in 0...(str.count - 1) {
        if str[str.index(str.startIndex, offsetBy: x)] == " " {
            result += "%20"
        }
        else {
            result += String(str[str.index(str.startIndex, offsetBy: x)])
        }
    }

    return result
}



let str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sagittis nulla a tincidunt eleifend. Nulla eu luctus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id consequat metus. Aliquam tincidunt sem ante, eu maximus ex commodo quis. Nulla eros dui, faucibus in sagittis eget, mattis vitae ex. Mauris rhoncus consectetur augue, ac congue odio faucibus nec. Duis ac est pulvinar, maximus sem vel, fringilla magna"
var ini:Int64
var fin:Int64
var result:String


print("urlify_1:\n\(str):\n")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = urlify_1(str:str)
fin = Int64(Date().timeIntervalSince1970 * 1000)
print("[" + String(fin - ini) + "] \"\(result)\"\n\n")


print("urlify_2:\n\(str):\n")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = urlify_2(str:str)
fin = Int64(Date().timeIntervalSince1970 * 1000)
print("[" + String(fin - ini) + "] \"\(result)\"\n\n")


print("urlify_3:\n\(str):\n")
ini = Int64(Date().timeIntervalSince1970 * 1000)
result = urlify_3(str:str)
fin = Int64(Date().timeIntervalSince1970 * 1000)
print("[" + String(fin - ini) + "] \"\(result)\"\n\n")