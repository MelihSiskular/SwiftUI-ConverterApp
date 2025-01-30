//
//  ExtractedView.swift
//  converterAppSwiftUI
//
//  Created by Melih Şişkular on 29.01.2025.
//

import SwiftUI

// MARK: Extracted Views
struct ExchangeRate: View {
    
    let leftImageResoruce : ImageResource
    let rightImageResrouce: ImageResource
    let text: String
    
    var body: some View {
        HStack {
            Image(leftImageResoruce)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            Text(text)
            Image(rightImageResrouce)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {    //Just for instance we gave some values to there
    ExchangeRate(leftImageResoruce: .goldpiece, rightImageResrouce: .goldpenny, text: "1 Gold Piece = 4 Gold Pennies") //now we have 2 preview screen near by
}
