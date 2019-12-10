//
//  ContentView.swift
//  WatchAppExtension Extension
//
//  Created by dong, hao on 12/9/19.
//  Copyright © 2019 dong, hao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        Text("Hello, Apple Watch!").font(Font.system(size: 24)).lineLimit(2)
        Text("👋🍎⌚️‼️")
        }.lineSpacing(5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
