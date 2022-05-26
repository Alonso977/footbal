//
//  CategoryModel.swift
//  Football
//
//  Created by Alonso Alas on 19/5/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
