//
//  NavigationBarDetailView.swift
//  Football
//
//  Created by Alonso Alas on 21/5/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // Alonso: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // Alonso: - BODY
    var body: some View {
        HStack() {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })//:button
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })//:button
        }//:HSTACK
    }
}


// Alonso: - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
