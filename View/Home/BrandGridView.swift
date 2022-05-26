//
//  BrandGridView.swift
//  Football
//
//  Created by Alonso Alas on 21/5/22.
//

import SwiftUI

struct BrandGridView: View {
    // Alonso: - PROPERTIES
    
    // Alonso: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })//: LAZYGRID
                .frame(height: 200)
                .padding(15)
        })//: SCROLLVIEW
    }
}

// Alonso: - PREVIEW
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
