//
//  AddToCartDetailView.swift
//  Football
//
//  Created by Alonso Alas on 23/5/22.
//

import SwiftUI

struct AddToCartDetailView: View {
    // Alonso: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // Alonso: - BODY
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//:button
            .padding(15)
            .background(
                Color(
                    red: shop.selectedProduct?.red ?? sampleProduct.red,
                    green: shop.selectedProduct?.green ?? sampleProduct.green,
                    blue: shop.selectedProduct?.blue ?? sampleProduct.blue
                )
            )
            .clipShape(Capsule())
    }
}

// Alonso: - PREVIEW
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
