//
//  ExtractedView.swift
//  converterAppSwiftUI
//
//  Created by Melih Şişkular on 30.01.2025.
//

import SwiftUI

struct Currencies: View {
    
    let currencyImageResource : ImageResource
    let currencyText: String
    
    var body: some View {
        ZStack(alignment:.bottom) {
            //Currency Image
            Image(currencyImageResource)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
            
            //Currency Text(front but at the bottom)
            Text(currencyText)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100,height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    Currencies(currencyImageResource: .copperpenny, currencyText: "Cooper Penny")
}
