//
//  ContentView.swift
//  SplineApp
//
//  Created by Aniket Bane on 27/02/24.
//

import SwiftUI

struct ContentView: View {
    var object : [objects] = objectData
    
    var body: some View {
        
        VStack {
            TabView{
                ForEach(object[0...4]){ item in
                    CardView(object: item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .padding(.vertical,20)
        }
        .background(Color.black)
        
    }
}

#Preview {
    ContentView()
}
