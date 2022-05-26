//
//  Constant.swift
//  Football
//
//  Created by Alonso Alas on 19/5/22.
//

import SwiftUI


// DATA

let players: [Player] = Bundle.main.decode(file: "player.json")
let categories: [Category] = Bundle.main.decode(file: "category.json")
let products: [Product] = Bundle.main.decode(file: "product.json")
let brands: [Brand] = Bundle.main.decode(file: "brand.json")
let sampleProduct: Product = products[2]

// COLOR

let colorBackground: Color = Color(UIColor(red: 0.88, green: 0.88, blue: 0.88, alpha: 1.00))
//let colorBackground: Color = Color(UIColor(red: 0.74, green: 0.74, blue: 0.74, alpha: 1.00))
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
// API
// IMAGE
// FONT
// STRING
// MISC
