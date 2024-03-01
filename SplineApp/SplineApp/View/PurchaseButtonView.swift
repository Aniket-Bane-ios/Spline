//
//  PurchaseButtonView.swift
//  SplineApp
//
//  Created by Aniket Bane on 27/02/24.
//

import SwiftUI
import ProgressHUD
struct PurchaseButtonView: View {
    @AppStorage ("isOnboarding") var isOnboarding : Bool?
    @State private var showAlert = false
    
    var body: some View {
        Button(action: {
            isOnboarding = false
            showAlert = true
        }, label: {
            HStack {
                Text("Add to cart")
                Image(systemName: "cart.badge.plus")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
                    .symbolRenderingMode(.multicolor)
                
            }
            .padding(.horizontal,16)
            .padding(.vertical,5)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth : 1.25)
            )
        }) // : Button
        .accentColor(Color.white)
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Purchase Successful"), message: Text("Your purchase has been completed successfully."), dismissButton: .default(Text("OK")))
        }
        Spacer()
    }

}

#Preview {
    PurchaseButtonView()
}
