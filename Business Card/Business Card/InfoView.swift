//
//  InfoView.swift
//  Business Card
//
//  Created by Sandeep Sahani on 15/02/23.
//

import SwiftUI

/// Custom reusble info view
struct InfoView: View
{
    let text: String
    let imageName: String
    
    var body: some View
    {
        
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                
                HStack
                {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    
                    Text(text)
                }
            )
            .padding(.all)
    }

}

struct InfoView_Previews: PreviewProvider
{
    static var previews: some View
    {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
