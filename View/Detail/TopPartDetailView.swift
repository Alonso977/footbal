//
//  TopPartDetailView.swift
//  Football
//
//  Created by Alonso Alas on 21/5/22.
//

import SwiftUI

struct TopbarDetailView: View {
    // Alonso: - PROPERTIES
    
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    // Alonso: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })//:VSTACK
                .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            //PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .frame(width: 210, height: 250)
                .offset(y: isAnimating ? 0 : -35)
        })//: HSTACK
            .onAppear(perform: {
                withAnimation(.easeOut(duration: 0.75)) {
                    isAnimating.toggle()
                }
            })
    }
}

// Alonso: - PREVIEW
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopbarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
