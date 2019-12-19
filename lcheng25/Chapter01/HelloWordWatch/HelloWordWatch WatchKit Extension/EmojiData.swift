//
//  EmojiData.swift
//  HelloWordWatch WatchKit Extension
//
//  Created by l.b.cheng on 2019/12/9.
//  Copyright © 2019 l.b.cheng. All rights reserved.
//

import WatchKit

struct EmojiData {
    let people = ["😄", "😙", "😔", "😣", "😕", "👯", "💁"]
    let nature = ["🐣", "🍀", "🌺", "🌴", "⛅️", "🐋", "🐺"]
    let objects = ["🎁", "⏳", "🍎", "🎵", "💰", "⌚️"]
    let places = ["✈️", "♨️", "🎭", "🚲", "🎢"]
    let symbols = ["🔁", "🔀", "⏩", "⏪", "🆒"]
}

extension Int {
  func random() -> Int {
    return Int(arc4random_uniform(UInt32(self)))
  }
}
