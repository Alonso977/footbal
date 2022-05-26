//
//  HeaderDetailView.swift
//  Football
//
//  Created by Alonso Alas on 21/5/22.
//

import SwiftUI

struct HeaderDetailView: View {
    // Alonso: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    // Alonso: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.title)
                .fontWeight(.black)
        })//:VSTACK
            .foregroundColor(.white)
    }
}

// Alonso: - PREVIEW
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
