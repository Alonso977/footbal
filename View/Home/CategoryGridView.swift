//
//  CategoryGridView.swift
//  Football
//
//  Created by Alonso Alas on 19/5/22.
//

import SwiftUI

struct CategoryGridView: View {
    // Alonso: - PROPERTY
    
    // Alonso: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ){
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            })//: GRIDVIEW
                .frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
        })//: SCROLLVIEW
    }
}

// Alonso: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
