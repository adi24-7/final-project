//
//  ItemStore.swift
//  capstone-project
//
//  Created by Aditi Deshmukh on 8/12/25.
//

import Foundation

struct Item {
    let name: String
    let location: String
    let type: ItemType // lost or found
}

enum ItemType: String {
    case lost = "Lost"
    case found = "Found"
}

class ItemStore {
    static let shared = ItemStore()
    private init() {}
    
    var items: [Item] = []
    
    func addItem(name: String, location: String, type: ItemType) {
        items.append(Item(name: name, location: location, type: type))
    }
}
