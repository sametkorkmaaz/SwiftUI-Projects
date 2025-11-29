//
//  WishlistApp.swift
//  Wishlist
//
//  Created by Samet Korkmaz on 29.11.2025.
//

import SwiftUI
import SwiftData

@main
struct WishlistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Wish.self)
        }
    }
}
