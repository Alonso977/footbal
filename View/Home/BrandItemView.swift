//
//  BrandItemView.swift
//  Football
//
//  Created by Alonso Alas on 21/5/22.
//

import SwiftUI

struct BrandItemView: View {
    // Alonso: - PROPERTIES
    let brand: Brand
    
    // Alonso: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding(3)
                .cornerRadius(12)
                .background(Color.white.cornerRadius(12))
                .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
        }//: HSTACK
    }
}


// Alonso: - PREVIEW
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
