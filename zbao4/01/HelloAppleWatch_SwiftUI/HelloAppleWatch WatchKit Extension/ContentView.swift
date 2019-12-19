//
//  ContentView.swift
//  HelloAppleWatch WatchKit Extension
//
//  Created by 鲍志轶 on 2019/12/9.
//  Copyright © 2019 鲍志轶. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var emojiText = EmojiData.randomText

    var body: some View {
        Button(action: {
            self.emojiText = EmojiData.randomText
        }) {
            Text(emojiText)
        }
        .background(Image("Cookies"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
