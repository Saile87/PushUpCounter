//
//  ContentView.swift
//  PushUpCounter
//
//  Created by Elias Breitenbach on 03.01.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var pushups = 0
    @State private var switchColor = false
    let randomColor: [Color] =  [.red, .blue, .green, .yellow, .mint, .black]
    
    let employee = Employee()
    
    var body: some View {
        VStack {
            Text("\(employee.name)")
            Text("Push Ups Counter")
                .font(.title)
                .padding()
            NavigationStack {
                ZStack {
                    Text("\(pushups)")
                        .frame(width: 300, height: 200)
                        .font(.largeTitle)
                        .background(randomColor[Int.random(in: 0...5)])
                        .cornerRadius(40)
                        .opacity(0.3)
                    
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            pushups -= 1
                            
                        }, label: {
                            Image(systemName: "minus")
                        })
                        
                        Spacer()
                        Spacer()
                        Button(action: {
                            pushups += 1
                            switchColor = true
                           
                            
                        }, label: {
                            Image(systemName: "plus")
                        })
                        
                        Spacer()
                    }
                    .font(.title)
                    
                }
            }
        }
    }
}


struct Employee {
    var name: String
    var yearsActive = 0
}
   
    extension Employee {
            init() {
                self.name = "Anonymos"
                self.yearsActive = 9
            }
    }

let elias = Employee(name: "Elias")
let willy = Employee(name: "Willy", yearsActive: 8)
let anon = Employee()


#Preview {
    ContentView()
}
