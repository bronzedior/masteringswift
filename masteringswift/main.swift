//
//  main.swift
//  masteringswift
//
//  Created by Fransiscus Bronzedior Driandonny Noryon on 20/05/26.
//

import Foundation


var name = "Donny"
let age: Int
age = 22

print(age)

//if name == "Donny" {
//    age = 21
//    print("My name is \(name), age is \(age)")
//} else {
//    name = "Frans"
//    age = 20
//
//    print("My name is \(name), age is \(age)")
//}

let minValue = UInt8.min
let maxValue = UInt128.max
print(minValue, maxValue)

let gpa: Double
gpa = 3.9
let gps: Float64
gps = 3.918392183921
print(gpa + gps)

let pi = 3 + 0.14
print(type(of: pi))
print(pi.isZero)

typealias FullNameExample = (firstName: String, lastName: String)
let fullName: FullNameExample = ("Donny", "Donny")
print(fullName)


let http200Message = ("json/application", 200, "Success", false)
let http404Message = ("json/application", 404, "Error", true)
let http500Message = (contentType500: "json/application", statusCode500: 500, statusMessage500: "Server Error", isError500: true)

let (contentType200, statusCode200, statusMessage200, isError200) = http200Message
print("Content-Type: \(contentType200)", "Status: \(statusCode200) \(statusMessage200)", "Error: \(isError200)")
let (_, statusCode404, statusMessage404, _) = http404Message
print(statusCode404, statusMessage404)
print(http500Message.statusCode500, http500Message.statusMessage500)
// How to loop tuples?


let currentStock = "-123k"
let convertedStock = Int(currentStock) ?? 0
let optionalConvertedStock = Int(currentStock)
print(type(of: convertedStock))
print(convertedStock)

var softDeleted: Bool?
//softDeleted = true

if softDeleted == true {
    print("Product hidden")
} else {
    if convertedStock > 0 {
        print("\(convertedStock) units available")
    } else {
        print("Empty stock")
    }
}


// optional binding
// intinya jika optional punya value sesuai bisa di simpan di variable?
if let actualStock = Int(currentStock) {
    print("String \"\(currentStock)\" is equal to \(actualStock)")
} else {
    print("String \"\(currentStock)\" is not equal to an integer")
}

if let optionalConvertedStock = optionalConvertedStock {
    print("Optional binding set new const value same variable: \(optionalConvertedStock)")
    // set value new const same variable
}
if let optionalConvertedStock {
    print("Optional binding set new const value same variable: \(optionalConvertedStock)")
}


let paycheck: String? = "2000"
let paycheckDay = "Your paycheck is " + (paycheck ?? "1000")
print(paycheckDay)


// force unwrapping dan guard tidak bisa bekerja sama dalam variable yg sama
var responseMessage: String? = "Item added to cart"
let notification: String = responseMessage!
//guard let notification = responseMessage else {
//    fatalError("Message invalid")
//}
print(notification)


// Implicitly Unwrapped Optionas masih blm paham, skip
// Error Handling masih blm tau use casenya, skip
// Assertions and Preconditions blm saatnya testing, skip
