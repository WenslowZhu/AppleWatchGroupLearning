//
//  EmojiData.swift
//  HelloAppleWatch
//
//  Created by 鲍志轶 on 2019/12/9.
//  Copyright © 2019 鲍志轶. All rights reserved.
//

import Foundation

extension Int {
  func random() -> Int {
    return Int(arc4random_uniform(UInt32(self)))
  }
}

struct EmojiData {
    let people = ["😄", "😙", "😔", "😣", "😕", "👯‍♀️", "💁‍♀️"]
    let nature = ["🐣", "🍀", "🌺", "🌴", "⛅️", "🐋", "🐺"]
    let objects = ["🎁", "⏳", "🍏", "📀", "💰", "🕰"]
    let places = ["✈️", "🏖", "🎢", "⛲️", "🌋"]
    let symbols = ["♈️", "㊙️", "🏧", "💯", "🔞"]
}
