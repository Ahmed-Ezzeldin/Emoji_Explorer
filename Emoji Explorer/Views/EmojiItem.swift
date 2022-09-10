//
//  EmojiItemView.swift
//  Emoji Explorer
//
//  Created by Codemaker on 10/09/2022.
//

import SwiftUI

struct EmojiItem: View {
    var item: String;
    
    var body: some View {
        Text(item)
            .font(.system(size: 30))
    }
}

struct EmojiItemView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiItem(item: "👻")
            .previewLayout(.fixed(width: 300, height: 50))
    }
}
