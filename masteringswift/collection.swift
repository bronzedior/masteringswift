//
//  collection.swift
//  masteringswift
//
//  Created by Fransiscus Bronzedior Driandonny Noryon on 21/05/26.
//

import Foundation

func collectionExample() {
    var learners: [String] = []
    learners.append("Fransiscus")
    learners += ["Bronzedior"]
    learners[0...1] = ["Driandonny", "Noryon"]
    learners.insert(contentsOf: ["World", "Class", "Developer"], at: 0)
    print("someInts is of type [Int] with \(learners.count) elements")
    if learners.isEmpty {
        print("learners is empty")
    }
    
    var learner = learners[0]
    print("First learner is \(learner)")
    
    // ini tuple karena index int dan learner string
    // jadi butuh enumerated
    // enumerated hanya kasih urutan sesuai apa yang di print duluan
    // bukan real-world order (sesuai index)
    for (index, learner) in learners.enumerated() {
        print("\(index + 1). \(learner)")
    }
    
    
    var learnersSet: Set<String> = ["Bronzedior", "Driandonny", "Noryon"]
    print("learnersSet is of type Set<String> with \(learnersSet.count) elements, contains: \(learnersSet)")
    learnersSet = []
    print("learnersSet is of type Set<String> with \(learnersSet.count) elements")
    learnersSet.insert("Fransiscus")
    learnersSet.insert("Bronzedior")
    learnersSet.insert("Driandonny")
    learnersSet.insert("Noryon")
    print("learnersSet is of type Set<String> with \(learnersSet.count) elements")
    
    if learnersSet.contains("Fransiscus") {
        print("Hello")
    }
    
    for (index, learner) in learnersSet.enumerated() {
        print("\(index + 1). \(learner)")
    }
    
    let morningLearner: Set = ["Fransiscus", "Bronzedior", "Driandonny", "Noryon"]
    let afternoonLearner: Set = ["Fransiscus", "Bronzedior"]
//    morningLearner.union(afternoonLearner)
//    morningLearner.intersection(afternoonLearner)
//    morningLearner.subtracting(afternoonLearner)
    print(morningLearner.symmetricDifference(afternoonLearner))
    
    
    var keyVal: [String: String] = [:]
    keyVal["FirstName"] = "Fransiscus"
    keyVal["LastName"] = "Noryon"
    
    if let oldValue = keyVal.updateValue("Bronzedior", forKey: "LastName") {
        // swift dictionary lookup harus bisa return nil kalo ga ada key yg sesuai
        // makanya dibuat optional dan bisa di force unwrapping
        print("oldValue: \(oldValue), newValue: \(keyVal["LastName"]!)")
    } else {
        print("Key doesn't exist")
    }
}
