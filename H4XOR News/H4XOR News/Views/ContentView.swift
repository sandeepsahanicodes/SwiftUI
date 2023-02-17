//
//  ContentView.swift
//  H4XOR News
//
//  Created by Sandeep Sahani on 16/02/23.
//

import SwiftUI

struct ContentView: View
{
     @ObservedObject var networkManager = NetworkManager()
    var body: some View
    {
        NavigationView
        {
            List(networkManager.posts) { post in
                HStack
                {
                    Text("\(post.points)")
                    Text(post.title)
                }
            }.navigationTitle(Text("H4XOR NEWS"))
                .navigationBarTitleDisplayMode(.large)
        }.onAppear
        {
            self.networkManager.fetchData()
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

//let posts =
//[
//
//    Post(objectID: "1", points: 1, title: "Apple", url: "https"),
//    Post(objectID: "2", points: 1, title: "Mango", url: "https"),
//    Post(objectID: "3", points: 1, title: "Guwava", url: "https"),
//    Post(objectID: "4", points: 1, title: "Pineapple", url: "https"),
//    Post(objectID: "5", points: 1, title: "Peaches", url: "https"),
//
//]
