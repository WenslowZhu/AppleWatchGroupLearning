//
//  EmojiData.swift
//  AppleWatchDemo
//
//  Created by mgc000005751 on 12/12/19.
//  Copyright © 2019 Michael. All rights reserved.
//

import Foundation

class EmojiData: NSObject {
    let people = ["😀","😂","😎","🤩","🤬","🥶"]
    let nature = ["👻","🐞","🐜","🐠","🕸"]
    let objects = ["🌎","⛸","🎱","🚗","🔪"]
    let places = ["🏰","🛩","🛳","🚖","🚠"]
    let symbols = ["🈲","☯️","🛐","♋️","♒️"]
}

extension Int {
  func random() -> Int {
    return Int(arc4random_uniform(UInt32(self)))
  }
}

