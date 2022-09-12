//
//  EmojiModel.swift
//  Emoji Explorer
//
//  Created by Codemaker on 12/09/2022.
//

import Foundation

struct EmojiModel: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case emoji
        case skin_tone_support
        case name
        case slug
        case unicode_version
        case emoji_version

    }
    
    var id = UUID()
    var emoji: String
    var skin_tone_support: Bool
    var name: String
    var slug: String
    var unicode_version: String
    var emoji_version: String
}

