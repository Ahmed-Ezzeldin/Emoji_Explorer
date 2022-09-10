//
//  EmojiViewScreen.swift
//  Emoji Explorer
//
//  Created by Codemaker on 10/09/2022.
//

import SwiftUI

struct EmojiDetailsScreen: View {
    var emoji: String;
    var body: some View {
        Text(emoji)
            .font(.system(size: 200))
    }
}

struct EmojiViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailsScreen(emoji: "👻")
    }
}
