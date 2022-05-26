//
//  RaitingSizesDetailView.swift
//  Football
//
//  Created by Alonso Alas on 23/5/22.
//

import SwiftUI

struct RaitingSizesDetailView: View {
    
    // Alonso: - PROPERTIES
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    // Alonso: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            //RATING
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id:\.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })//:Button
                    }//: LOOP
                })//:HSTACK
                
            })//:VSTACK
            
            Spacer()
            
            //SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Text(size)
                            .font(.footnote)
                            .fontWeight(.black)
                            .foregroundColor(colorGray)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(Color.white.cornerRadius(5))
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray, lineWidth: 2)
                            )
                    }
                })//:HSTACK
            })
            
        })//:HSTACK
    }
}

// Alonso: - PREVIEW
struct RaitingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RaitingSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
