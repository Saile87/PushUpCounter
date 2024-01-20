//
//  ContentView.swift
//  PushUpCounter
//
//  Created by Elias Breitenbach on 03.01.24.
//

import SwiftUI

class Zaehler: ObservableObject {
    
    @Published var day = 0
    @Published var week = 0
    @Published var month = 0
}

struct ContentView: View {
    
    @State private var day = 0
    @State private var week = 0
    @State private var month = 0
    
    @State private var pushups = 0
    let randomColor: [Color] =  [.red, .blue, .green, .yellow, .mint, .gray, .clear]
    
    var body: some View {
        VStack {
            
            CalenderView(day: day, week: week, month: month)
            
            Text("Pushups Counter")
                .font(.title)
                .padding()
            
            ZStack {
                Text("\(pushups)")
                    .frame(width: 300, height: 400)
                    .font(.largeTitle)
                    .background(randomColor[Int.random(in: 0...5)])
                    .cornerRadius(40)
                    .opacity(0.3)
                
                VStack {
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
                            if pushups % 10 == 0 {
                                day += 1
                            } else if day % 10 == 0 {
                                week += 1
                            } else if week % 10 == 0 {
                                month += 1
                            } else {
                                month = 999
                            }
                            
                        }, label: {
                            Image(systemName: "plus")
                        })
                        Spacer()
                    }
                }
                .font(.title)
            }
        }
    }
}



#Preview {
    ContentView()
}
