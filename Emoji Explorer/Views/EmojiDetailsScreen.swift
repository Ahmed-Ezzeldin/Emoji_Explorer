//
//  EmojiViewScreen.swift
//  Emoji Explorer
//
//  Created by Codemaker on 10/09/2022.
//

import SwiftUI
private var emojis: [EmojiModel] = Bundle.main.decode2("emoji_data.json")

struct EmojiDetailsScreen: View {
    var emoji: EmojiModel;
    var body: some View {
        VStack{
            
            VStack{
                Text(emoji.emoji)
                    .font(.system(size: 150))
                Spacer()
                    .frame(height: 20)
                Text(emoji.name.uppercased())
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                Spacer()
                    .frame(height: 20)
                Text(emoji.unicode_version)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                Spacer()
                    .frame(height: 10)
                    .foregroundColor(.green)
                Text(emoji.slug)
                    .foregroundColor(.gray)
            }
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

struct EmojiViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailsScreen(emoji: emojis[0])
    }
}
