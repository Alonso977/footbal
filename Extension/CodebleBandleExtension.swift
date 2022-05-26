//
//  CodebleBandleExtension.swift
//  Football
//
//  Created by Alonso Alas on 19/5/22.
//

import Foundation

extension Bundle {
    func  decode<T: Decodable>(file: String) -> T {
        // 1. locate de JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in project.")
        }
        // 2. create a propertie for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in project.")
        }
        // 3. create a decoder
        let decoder = JSONDecoder()
        // 4. create a property for the decoded data
        guard let decodeData = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to DECODE \(file) in project.")
        }
        // 5. return the ready-ready-to-use data
        return decodeData
    }
}
