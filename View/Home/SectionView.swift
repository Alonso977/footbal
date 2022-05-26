//
//  SectionView.swift
//  Football
//
//  Created by Alonso Alas on 19/5/22.
//

import SwiftUI

struct SectionView: View {
    // Alonso: - PROPERTIES
    @State var rotateClockwise: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }//: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
