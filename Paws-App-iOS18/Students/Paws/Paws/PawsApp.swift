//
//  PawsApp.swift
//  Paws
//
//  Created by Samet Korkmaz on 4.12.2025.
//

import SwiftUI
import SwiftData

@main
struct PawsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Pet.self)
        }
    }
}
