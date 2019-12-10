//
//  EmojiData.swift
//  AppleWatchLearningDemo
//
//  Created by zhongqi.yu on 2019/12/8.
//  Copyright © 2019 zhongqi.yu. All rights reserved.
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
