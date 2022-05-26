//
//  ProductDetailView.swift
//  Football
//
//  Created by Alonso Alas on 21/5/22.
//

import SwiftUI

struct ProductDetailView: View {
    // Alonso: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    // Alonso: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            
            //NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
          
            //HEADER
//            Text(sampleProduct.name)
            HeaderDetailView()
                .padding(.horizontal)
            
            //DETAIL TOP BAR
            TopbarDetailView()
                .zIndex(1)
                .padding(.horizontal)
            
            //DETAIL BOTTON PAR
            VStack(alignment: .center, spacing: 0, content: {
                
                //RATING + SIZES
                RaitingSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ??
                         sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//SCROLL
                
                //QUANTITY + FAVORITE
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                //ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
                Spacer()
            })//:VSTACK
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                )
        })//: VSTACK
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(
                    red: shop.selectedProduct?.red ?? sampleProduct.red,
                    green: shop.selectedProduct?.green ?? sampleProduct.green,
                    blue: shop.selectedProduct?.blue ?? sampleProduct.blue
                ).ignoresSafeArea(.all, edges: .all)
            )
    }
}

// Alonso: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
