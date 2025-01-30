//
//  SelectCurrenyView.swift
//  converterAppSwiftUI
//
//  Created by Melih Şişkular on 29.01.2025.
//

import SwiftUI

struct SelectCurrenyView: View {
    
    @Environment(\.dismiss) var  dismiss
    let columns = [GridItem(),GridItem(),GridItem()]
    
    let imageResourcesList : [ImageResource] =
                                                [.copperpenny,
                                                .silverpenny,
                                                .silverpiece,
                                                .goldpenny,
                                                .goldpiece
                                                ]
    
    let textList : [String] =
    ["Cooper Penny",
    "Silver Penny",
    "Silver Piece",
    "Gold Penny",
    "Gold Piece"
    ]
    
    var body: some View {
        
        ZStack {
            
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                
                //CURRENCY ICONS --- Using LazyVgrid
                //We want 3 columns so there's 3gridItem in there
                LazyVGrid(columns: columns ) {
                    ForEach(0..<5)  { index in //we wont use these 0,1,2,3,4 numbers so just skip "_"
                        Currencies(currencyImageResource: imageResourcesList[index], currencyText: textList[index])
                    }
                }
                

           
    
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                //CURRENCY ICONS
                LazyVGrid(columns: columns ) {
                    ForEach(0..<5)  { index in //we wont use these 0,1,2,3,4 numbers so just skip "_"
                        Currencies(currencyImageResource: imageResourcesList[index], currencyText: textList[index])
                    }
                }
                
                Button("Done") {
                    dismiss() //when we tap this button its gonna go back
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .padding()
                .font(.largeTitle)
            }
            .padding()
            .multilineTextAlignment(.center)
            
            
            
        }
        
        
    }
}

#Preview {
    SelectCurrenyView()
}


