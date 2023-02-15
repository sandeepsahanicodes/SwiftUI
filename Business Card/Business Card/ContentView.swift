//
//  ContentView.swift
//  Business Card
//
//  Created by Sandeep Sahani on 15/02/23.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        ZStack
        {
            Color(red: 0.10, green: 0.74, blue: 0.61)
                .ignoresSafeArea(.all)
            VStack
            {
                Image("Sandeep")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(.white, lineWidth: 5)
                    )
                Text("Sandeep Sahani")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                // Using reusable component for phone number
                InfoView(text: "+91 7608959749", imageName: "phone.fill")
                
                // Using reusable component for email
                InfoView(text: "sandeepsahani76j@gmail.com", imageName: "envelope.fill")
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}

