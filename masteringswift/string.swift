//
//  string.swift
//  masteringswift
//
//  Created by Fransiscus Bronzedior Driandonny Noryon on 20/05/26.
//

import Foundation

func stringExample() {
    let wiseWords = "\"Everything is a win when the goal is to experience\""
    print(wiseWords)
    
    let threeMoreDoubleQuotationMarks = #"""
        """
        """#
    print(threeMoreDoubleQuotationMarks)
    
//    let constantString = "Highlander"
//    constantString += "!"
    
    let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
    let catString = String(catCharacters)
    print(catString.count)
    
    
    let greeting = "Guten Morgen!"
    print(greeting[greeting.startIndex])
    print(greeting[greeting.index(after: greeting.startIndex)])
    print(greeting[greeting.index(before: greeting.endIndex)])
//    endIndex selalu point ke past-the-end
//    print(greeting[greeting.endIndex])
    print(greeting[greeting.index(greeting.startIndex, offsetBy: 2)])
    
    for index in greeting.indices {
        print("\(greeting[index]) ", terminator: "")
        // terminator buat append
    }
    print()
    
    
    var welcomeSign = "Welcome"
    welcomeSign.insert(contentsOf: " Adventurer", at: welcomeSign.endIndex)
    welcomeSign.insert("!", at: welcomeSign.endIndex)
    print(welcomeSign)
    welcomeSign.remove(at: welcomeSign.index(before: welcomeSign.endIndex))
    welcomeSign.removeLast(11)
    welcomeSign.removeSubrange(welcomeSign.startIndex..<welcomeSign.index(welcomeSign.startIndex, offsetBy: 3))
    print(welcomeSign)
    
    
    let salutations = "Salutations, World!"
    let salutationIndex = salutations.firstIndex(of: ",") ?? salutations.endIndex
    let greetingWord = salutations[..<salutationIndex]
    let farewellWord = salutations[salutations.index(after: salutationIndex)...]
    print(greetingWord)
    print(farewellWord)
    
    
    let learners = [
        "C9S1 - Fransiscus",
        "C9S1 - Bronzedior"
    ]
    
    for learner in learners {
        if learner.hasPrefix("C9S1") {
            print("Ahoy Captain")
        }
    }
}
