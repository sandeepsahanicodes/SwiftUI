//
//  ContentView.swift
//  I AM Rich
//
//  Created by Sandeep Sahani on 15/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View
    {
        ZStack
        {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack
            {
                Text("I Am Rich").font(.system(.largeTitle, design: .default, weight:.medium)).foregroundColor(.white)
                 
                Image("diamond")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
