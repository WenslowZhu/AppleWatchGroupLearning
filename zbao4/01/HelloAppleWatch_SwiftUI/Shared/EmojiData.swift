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
    
    static var randomText: String {
        let emoji = EmojiData()
        let people = emoji.people[emoji.people.count.random()]
        let nature = emoji.nature[emoji.nature.count.random()]
        let objects = emoji.objects[emoji.objects.count.random()]
        let places = emoji.places[emoji.places.count.random()]
        let symbols = emoji.symbols[emoji.symbols.count.random()]
        return people + nature + objects + places + symbols
    }
}
