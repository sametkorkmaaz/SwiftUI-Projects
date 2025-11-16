//
//  ContentView.swift
//  AsyncImage
//
//  Created by Samet Korkmaz on 16.11.2025.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .foregroundStyle(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    
    private var imageUrl: String = "https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/92/66/d9/9266d944-72fd-da32-a508-5a324d09a500/AppIcon-0-0-1x_U007epad-0-9-0-85-220.png/200x200ia-75.webp"
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
            switch phase {
            case .empty:
                Image(systemName: "house")
            case .success(let image):
                image
                    .imageModifier()
                    .transition(.move(edge: .leading))
            case .failure(_):
                Image(systemName: "heart")
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)
    }
}

#Preview {
    ContentView()
}
