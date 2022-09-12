//
//  ContentView.swift
//  Emoji Explorer
//
//  Created by Codemaker on 09/09/2022.
//

import SwiftUI



struct ContentView: View {
    private var emojis: [EmojiModel] = Bundle.main.decode2("emoji_data.json")
    var body: some View {
        NavigationView {
            List(emojis){ item in
                
                NavigationLink {
                    EmojiDetailsScreen(emoji: item)
                } label: {
                    
                    EmojiRowView(emoji: item)
                }
            }
            .navigationTitle("Emojis")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
