//
//  structClass.swift
//  masteringswift
//
//  Created by Fransiscus Bronzedior Driandonny Noryon on 24/05/26.
//

import Foundation

func structClassExample() {
    struct Learner {
        let name: String
        let shift: String
    }
    
    let personA = Learner(name: "PersonA", shift: "Morning")
    print(personA)
    
    class Student {
        let name: String
        let shift: String
        
        init(name: String, shift: String) {
            self.name = name
            self.shift = shift
        }
        
        // perlu computed property untuk print reference type
        var printed: String {
            return "\(name) is a \(shift) student"
        }
    }
    
    let personB = Student(name: "PersonB", shift: "Afternoon")
    let display = personB.printed
    print(display)
//    print(personB.name, personB.shift)
}
