//
//  Title.swift
//  Football
//
//  Created by Alonso Alas on 20/5/22.
//

import SwiftUI


struct Title: View {
    // Alonso: - PROPERTIES
    var title: String
    
    // Alonso: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

// Alonso: - PREVIEW
struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
