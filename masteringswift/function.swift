//
//  function.swift
//  masteringswift
//
//  Created by Fransiscus Bronzedior Driandonny Noryon on 21/05/26.
//

import Foundation

func functionExample() {
    func greet(person: String, age: Int) -> String {
        let greeting = "Hello " + person + " (" + String(age) + "), you are future world class developer"
        return greeting
    }
    print(greet(person: "Fransiscus", age: 21))
    
    //    func greet(person: String, age: Int) {
    //        print()
    //    }
    //    greet(person: "Fransiscus", age: 21))
    
    func printAndCount(string: String) -> Int {
        print(string)
        return string.count
    }
    func printWithoutCounting(string: String) {
        let _ = printAndCount(string: string)
    }
    var result = printAndCount(string: "hello, world")
    print(result)
    var result2 = printWithoutCounting(string: "hello, world")
    print(result2)
    
    
    func minMax(array: [Int]) -> (min: Int, max: Int)? {
        if array.isEmpty { return nil }
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
//    if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
//        print("min is \(bounds.min) and max is \(bounds.max)")
//    }
    let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
    print(bounds!)
    
    // functions with an implicit return (kalo cuma contain 1 line)
    func multiply(x: Int, y: Int) -> Int {
        x * y
    }
    print(multiply(x: 2, y: 3))
    
    func dbConnection(db name: String, port host: String) -> String {
        return "connecting to \(name) on \(host)"
    }
    print(dbConnection(db: "masteringswift", port: "127.0.0.1:5432"))
    
    func redisConnection(_ name: String, port: String = "6379") -> String {
        return "connecting to \(name) on \(port)"
    }
    print(redisConnection("redis"))
    
    // variadic parameter
    // inout parameter
    // function type
}
