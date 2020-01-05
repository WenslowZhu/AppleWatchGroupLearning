//
//  EmojiData.swift
//  HelloAppleWatch
//
//  Created by tstone10 on 2019/12/23.
//  Copyright © 2019 Afra. All rights reserved.
//

import Foundation

extension Int {
    func random() -> Int {
      return Int(arc4random_uniform(UInt32(self)))
    }
}

struct EmojiData {
    let people = ["😄", "😙", "😔", "😣", "😕", "👯", "💁"]
    let nature = ["🐣", "🍀", "🌺", "🌴", "⛅️", "🐋", "🐺"]
    let objects = ["🎁", "⏳", "🍎", "🎵", "💰", "⌚️"]
    let places = ["✈️", "♨️", "🎭", "🚲", "🎢"]
    let symbols = ["🔁", "🔀", "⏩", "⏪", "🆒"]
}
