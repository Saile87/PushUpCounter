//
//  ToggleButton.swift
//  PushUpCounter
//
//  Created by Elias Breitenbach on 17.01.24.
//
import SwiftUI

struct TopView: View {
    
    @State var tap: Bool = false
    
    var body: some View {
        
        HStack {
            Button(action: {
                tap.toggle()
            }, label: {
                Image(systemName: "gearshape")
            })
            .font(.largeTitle)
            Spacer()
                .padding()
        }
    }
}

#Preview {
    TopView()
}
