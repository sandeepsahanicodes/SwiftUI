//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Sandeep Sahani on 16/02/23.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        ZStack
        {
            // Background Image
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(edges: .all)
            
            // Dicee logo
            VStack
            {
                Image("diceeLogo")
                Spacer()
                HStack
                {
                    DiceView(n: 2)
                    DiceView(n: 1 )
                }
                .padding(.horizontal)
                Spacer()
                Button("Roll")
                {
                    
                }.foregroundColor(.white)
                    .buttonStyle(.bordered)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .tint(Color.red)
            
                
            }
                
        }

    }
}

// Dicee View
struct DiceView: View
{
    // Number that determines dice face.
    let n: Int
    var body: some View
    {

        Image("dice\(n)")
            .resizable()
            .aspectRatio(1.0, contentMode: .fit)
            .padding(.all)
            .frame(width: 180)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

