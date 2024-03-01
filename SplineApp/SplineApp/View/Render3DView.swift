//
//  Render3DView.swift
//  SplineApp
//
//  Created by Aniket Bane on 27/02/24.
//

import SwiftUI
import SplineRuntime
import ProgressHUD

struct Render3DView: View {
    var object: objects
    
    // State variables to track the loading status and whether to show the activity indicator
    @State private var isLoading = true
    
    var body: some View {
        ZStack(alignment: .topLeading){
            if isLoading {
                ActivityIndicator()
            } else {
                let url = Bundle.main.url(forResource: object.name, withExtension: "splineswift")!
                try? SplineView(sceneFileURL: url)
                
                Button(action: {
                    openUrl(urlString: "https://www.linkedin.com/in/aniket-bane-ios")
                }) {
                    Image("linkedin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45, height: 45)
                }
                .background(Color.black.opacity(0.5))
                .clipShape(Circle())
                .padding()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                isLoading = false
            }
        }
    }
}

struct ActivityIndicator: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
    }
}

#Preview {
    Render3DView(object: objectData[2])
}

