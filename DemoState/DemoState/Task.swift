//
//  Task.swift
//  DemoState
//
//  Created by Camilla Cidral on 21/06/22.
//

import Foundation

class Task: ObservableObject {
    internal init(name: String, isComplete: Bool, lastCompleted: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
    
    let name: String
    @Published var isComplete: Bool
    var lastCompleted: Date?
    
}
