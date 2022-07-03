//
//  ContentView.swift
//  DemoState
//
//  Created by Camilla Cidral on 21/06/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var theTask = Task(name: "Check all windows", isComplete: false, lastCompleted: nil)
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: theTask.isComplete ?
                      "checkmark.square" : "square")
                Text(theTask.name)
            }
            ControlPanel(theTask: self.theTask)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ControlPanel: View {
    @ObservedObject var theTask: Task
    
    var body: some View {
        if theTask.isComplete == false {
            Button(action: {
                theTask.isComplete = true
                
            }){
                Text("Mark Complete")
            }.padding(.top)
        } else {
            Button(action: {
                theTask.isComplete = false
            }){
                Text("Reset")
            }.padding(.top)
        }
    }
}
