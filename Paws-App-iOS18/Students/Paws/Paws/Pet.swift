//
//  Pet.swift
//  Paws
//
//  Created by Samet Korkmaz on 4.12.2025.
//

import Foundation
import SwiftData

@Model
final class Pet {
    var name: String
    @Attribute(.externalStorage) var photo: Data?
    
    init(name: String, photo: Data? = nil) {
        self.name = name
        self.photo = photo
    }
}

extension Pet {
    @MainActor
    static var preview: ModelContainer {
        let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try! ModelContainer(for: Pet.self, configurations: configuration)
        
        container.mainContext.insert(Pet(name: "Ali"))
        container.mainContext.insert(Pet(name: "Veli"))
        container.mainContext.insert(Pet(name: "Samet"))
        container.mainContext.insert(Pet(name: "Serkan"))
        container.mainContext.insert(Pet(name: "Fatih"))
        container.mainContext.insert(Pet(name: "Karabaş"))
        container.mainContext.insert(Pet(name: "Erhan"))
        container.mainContext.insert(Pet(name: "Mehmet"))
        
        return container
    }
}
