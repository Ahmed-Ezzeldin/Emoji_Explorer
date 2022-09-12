//
//  EmojiItemView.swift
//  Emoji Explorer
//
//  Created by Codemaker on 10/09/2022.
//

import SwiftUI

private var emojis: [EmojiModel] = Bundle.main.decode2("emoji_data.json")

struct EmojiRowView: View {
    var emoji: EmojiModel;
    
    var body: some View {
        HStack (alignment: .center) {
            Text(emoji.emoji)
                .font(.system(size: 35))
            VStack(alignment: .leading) {
                Text("\(emoji.name)")
                    .font(.system(size: 16))
//                    .fontWeight(.bold)
                Text("\(emoji.unicode_version)")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    
            }
        }
    }
}

struct EmojiItemView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiRowView(emoji: emojis[0])
            .previewLayout(.fixed(width: 300, height: 80))
    }
}
