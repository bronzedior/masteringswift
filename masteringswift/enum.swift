//
//  enum.swift
//  masteringswift
//
//  Created by Fransiscus Bronzedior Driandonny Noryon on 24/05/26.
//

import Foundation

func enumExample() {
    enum costumeColor {
        case beige
        case red
        case navy
        case green
    }
    
    var donny = costumeColor.beige
    donny = .red
    switch donny {
    case .red:
        print("Hari ini pakai baju merah")
    case .beige:
        print("Hari ini pakai baju beige")
    case .navy:
        print("Hari ini pakai baju navy")
    case .green:
        print("Hari ini pakai baju green")
    }
    
    
    enum Pages: CaseIterable {
        case main, topic, note
    }
//    let pages = Pages.allCases
//    print(pages)
    for page in Pages.allCases {
        print(page)
    }
    
    
    enum NetworkConnection {
        case loading
        case success(Payload: [String])
    }
    
    func checkNetwork(result: NetworkConnection) {
        switch result {
        case .loading:
            print("Loading")
        case .success(let payload):
            for data in payload {
                print(data)
            }
        }
    }
    
    let state1 = NetworkConnection.loading
    checkNetwork(result: state1)
    
    let state2 = NetworkConnection.success(Payload: ["200", "Success"])
    checkNetwork(result: state2)
}
