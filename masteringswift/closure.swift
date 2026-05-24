//
//  closure.swift
//  masteringswift
//
//  Created by Fransiscus Bronzedior Driandonny Noryon on 24/05/26.
//

import Foundation

func closureExample() {
    func incrementBalance() -> () -> Void {
        var balance = 0
        
        let incrementer = {
            balance += 1
            print("Total balance: \(balance)")
        }
        
        return incrementer
    }
    
    let balanceA = incrementBalance()
    balanceA()
    
    let balanceB = balanceA
    balanceB()
    
    
    func checkScore() -> () -> Void {
        var score = 10
        
        let checker = { [score] in
//        let checker = {
            print(score)
        }
        
        score = 99
        
        return checker
    }
    
    let score = checkScore()
    score()
    
    
    func learners(shift: String) -> (String) -> String {
        if shift == "morning" {
            return { (name: String) in
                return "Good morning \(name)"
            }
        } else if shift == "afternoon" {
            return { (name: String) in
                return "Good afternoon \(name)"
            }
        } else {
            return { (name: String) in
                return "Invalid shift"
            }
        }
    }
    
    let morning = learners(shift: "morning")
    let afternoon = learners(shift: "afternoon")
    
//    morning("personA")
//    afternoon("personB")
    
    let personA = morning("personA")
    let personB = afternoon("personB")
    
    print("morning person: \(personA)")
    print("afternoon person: \(personB)")
    
    // [weak] strong reference cycle
}
