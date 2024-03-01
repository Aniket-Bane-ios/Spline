//
//  CardView.swift
//  SplineApp
//
//  Created by Aniket Bane on 27/02/24.
//

import SwiftUI

struct CardView: View {
    
    var object : objects
    
    var body: some View {
        VStack () {
            Render3DView(object: object)
                .frame(height: 550)
                .ignoresSafeArea()
                .cornerRadius(20)
            
            Text(object.title)
                .foregroundStyle(Color.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
            
            //Button : Purchase
            PurchaseButtonView()
            
            Spacer()
            
        } // : VStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: [Color(uiColor:UIColor(hexString:object.color)),Color.black], startPoint: .zero, endPoint: .bottomTrailing))
        .cornerRadius(20)
        .ignoresSafeArea()
    }
    
    
}

#Preview {
    CardView(object: objectData[1])
}
