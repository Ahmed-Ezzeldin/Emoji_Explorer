//
//  ContentView.swift
//  Emoji Explorer
//
//  Created by Codemaker on 09/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(emojiList, id: \.self){ item in
                NavigationLink {
                    EmojiDetailsScreen(emoji: item)
                } label: {
                    EmojiItem(item: "\(item)")
                }
                
            }
            .navigationTitle("Emojis")
        }
        .navigationBarTitle(Text("Landmarks"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
