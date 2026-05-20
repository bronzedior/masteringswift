//
//  operator.swift
//  masteringswift
//
//  Created by Fransiscus Bronzedior Driandonny Noryon on 20/05/26.
//

import Foundation

func operatorExample() {
    let three = 3
    let minusThree = -three
    let plusThree = -minusThree
    print(plusThree)
    
    let result = (2, "zebra", 3) < (2, "lion", 2)
    print(result)
    
    let baseHeight = 40
    let ceiling = false
    let maxHeight = ceiling ? 100 : baseHeight
    print(maxHeight)
    
    let a: Int? = 10
    let b = 2
    // Nil-Coalescing Operator
    // variable harus memiliki value sebelum force unwrapping dieksekusi
    let result2 = a != nil ? a! : b
    print(result2)
    
    
    let index = 1...3
    for myIndex in index {
        print("\(myIndex). \(myIndex)")
    }
    
    
    let names = ["Fransiscus", "Bronzedior", "Driandonny", "Noryon"]
    let count = names.count
    for i in 0..<count {
        print("Person \(i + 1): \(names[i])")
    }
    
    
    for name in names[2...] {
        print(name)
    }
    for name in names[...2] {
        print(name)
    }
    
    
    let isMember = true
    let isAttend = true
    let owner = false
    if (isMember && isAttend) || !owner {
        print("Welcome to gym")
    } else {
        print("Get out")
    }
}
