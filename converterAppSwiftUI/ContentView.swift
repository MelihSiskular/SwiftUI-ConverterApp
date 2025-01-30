//
//  ContentView.swift
//  converterAppSwiftUI
//
//  Created by Melih Şişkular on 27.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showInfoScreen : Bool = false
    @State private var leftTextField : String = ""
    @State private var rightTexrField : String = ""
    
    var body: some View {
        
        ZStack {
            
            
            //Background Image is gonna be at back
            //Image("background")
            Image(.background) // same as above one
                //View Modifiers
                .resizable()
                .ignoresSafeArea() //Safe area, ussualy there are in there battery, hour etc.
            
                
            
            VStack {
                
                Image(.prancingpony) //  ("prancingpony")
                    .resizable()
                    .scaledToFit() //maintain it original widht and height ratio
                    .frame(height: 250) // When I try to alter weight, width gonna change as well
                                            //because we said that .scaletoFit() Protect RATIO
                    
                
             
                
                Text("Currency Exchange")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    //.border(.blue) //to see border in live, helpful for frames!
                
              
                
                //Conversion section
                HStack {
                    //Its gonna be 3 different section horizontal
                    
                    //Left
                    VStack {
                        //Currency
                        HStack {
                            //currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        
                        //TextField
                        TextField("Amount", text: $leftTextField) //Its gonna trigger this variable!
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.leading) //titleText gonna be at left
                            .padding(.top,-5)
                        
                    }
                    
                    
                    //Middle
                    Image(systemName: "equal") // systemName: not from assets, already has
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse) //Those symbols have animation from theirselves!!
                    
                    
                    
                    //Right
                    VStack {
                        //Currency
                        HStack {
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height:33)
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                                
                        }
                        
                        //Textfield
                        TextField("Amount", text: $rightTexrField)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing) //TitleText gonna be at right
                            .padding(.top,-5)
                    }
                }
                .padding()                 //Hstack padding
                .background(.black.opacity(0.5))   //Stacks are place some space in borders and also their background color changable
                .clipShape(.capsule)
                
                
                
                Spacer()
                
                //Info button
                HStack {
                    Spacer()
                    Button {
                        //Action Area
                        showInfoScreen.toggle()
                        
                        
                    }label: {
                        //Design Area
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
            
                    }.padding(.trailing) //Only padding to right side
                    .sheet(isPresented: $showInfoScreen) { //SHEET
                            ExchangeInfoView()  //Which screen gonna be displayed
                    } //for sheet no need to be here exaclty it may be in wherever of code
                    
                }
            }
            .border(.blue)
            
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
