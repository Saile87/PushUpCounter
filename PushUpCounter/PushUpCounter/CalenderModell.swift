//
//  CalenderModell.swift
//  PushUpCounter
//
//  Created by Elias Breitenbach on 15.01.24.
//

import SwiftUI

struct CalenderView: View {
    
    var day: Int
    var week: Int
    var month: Int
    
    var body: some View {
        
        HStack {
            VStack {
                Text("Heute")
                    .foregroundColor(.gray)
                Text("\(day)")
                
                Divider()
                    .frame(height: 1)
                    .frame(width: 100)
                    .overlay(.pink)
                
                Text("10")
                    .foregroundColor(.gray)
            }
            HStack {
                VStack {
                    Text("Woche")
                        .foregroundColor(.gray)
                    Text("\(week)")
                    
                    Divider()
                        .frame(height: 1)
                        .frame(width: 100)
                        .overlay(.pink)
                    Text("70")
                        .foregroundColor(.gray)
                }
                HStack {
                    VStack {
                        Text("Monat")
                            .foregroundColor(.gray)
                        Text("\(month)")
                        
                        Divider()
                            .frame(height: 1)
                            .frame(width: 100)
                            .overlay(.pink)
                        Text("300")
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

