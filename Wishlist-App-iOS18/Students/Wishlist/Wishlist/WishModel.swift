//
//  WishModel.swift
//  Wishlist
//
//  Created by Samet Korkmaz on 29.11.2025.
//

import Foundation
import SwiftData

@Model
class Wish {
    var title: String
    
    init(title: String) {
        self.title = title 
    }
}
