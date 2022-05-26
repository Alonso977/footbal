//
//  ProductItemView.swift
//  Football
//
//  Created by Alonso Alas on 20/5/22.
//

import SwiftUI

struct ProductItemView: View {
    // Alonso: - PROPERTIES
    let product: Product
    
    // Alonso: - BODY
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6) {
            //PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                    .frame(width: 150, height: 150, alignment: .center)
            }//:ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            //PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }//:VSTACK
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[4])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
