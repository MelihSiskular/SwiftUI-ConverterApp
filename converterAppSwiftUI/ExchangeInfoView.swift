//
//  ExchangeInfoView.swift
//  converterAppSwiftUI
//
//  Created by Melih Şişkular on 29.01.2025.
//

import SwiftUI

struct ExchangeInfoView: View {
    
    @Environment(\.dismiss) var dismiss //SwiftUI already has a property that can dismiss itself
                                            //So when you need to dismiss sheets just call dismiss()

    
    var body: some View {
        ZStack {
            
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3) //space between letters
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                ExchangeRate(leftImageResoruce: .goldpiece, rightImageResrouce: .goldpenny, text: "1 Gold Piece = 4 Gold Pennies")
                
                ExchangeRate(leftImageResoruce: .goldpenny, rightImageResrouce: .silverpiece, text: "1 Gold Penny = 4 Silver Pieces")
                
                ExchangeRate(leftImageResoruce: .silverpiece, rightImageResrouce: .silverpenny, text: "1 Silver Piece = 4 Silver Pennies")
                
                ExchangeRate(leftImageResoruce: .silverpenny, rightImageResrouce: .copperpenny, text: "1 Silver Penny = 100 Cooper Pennies")
                
                
                Button("Done") {
                    dismiss() //we called to dismiss sheet like a function
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2)) //mixing colors with another color we want
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white) //normally it was black from stack but we can alter specifically
                
                
                
                
            }
            .foregroundStyle(.black) //for whole stack is valid
            
        }
    }
}

#Preview {
    ExchangeInfoView()
}



