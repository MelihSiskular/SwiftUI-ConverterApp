//
//  ExtractedView.swift
//  converterAppSwiftUI
//
//  Created by Melih Şişkular on 29.01.2025.
//

import SwiftUI

// MARK: Extracted Views
struct ExchangeRate: View {
    var body: some View {
        HStack {
            Image(.goldpiece)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            Text("1 Gold Piece = 4 Gold Pennies")
            Image(.goldpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate() //now we have 2 preview screen near by
}
