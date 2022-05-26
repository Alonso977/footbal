//
//  Shop.swift
//  Football
//
//  Created by Alonso Alas on 23/5/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
