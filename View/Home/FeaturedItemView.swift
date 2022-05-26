//
//  FeaturedItemView.swift
//  Football
//
//  Created by Alonso Alas on 19/5/22.
//

import SwiftUI

struct FeaturedItemView: View {
    // Alonso: - PROPERTY
    let player: Player
    
    // Alonso: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(15)
    }
}

// Alonso: - PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[3])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
