//
//  QuantityFavoriteDetailView.swift
//  Football
//
//  Created by Alonso Alas on 23/5/22.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    // Alonso: - PROPERTIES
    @State private var counter: Int = 0
    
    // Alonso: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            
            Button(action: {
                feedback.impactOccurred()
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })//:button
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })//:button
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })//:button
            
        })//:HSTACK
            .font(.system(.title, design: .rounded))
            .foregroundColor(.black)
            .imageScale(.large)
    }
}

// Alonso: - PREVIEW
struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
