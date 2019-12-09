//
//  InterfaceController.swift
//  HelloAppleWatch Extension
//
//  Created by MGC000005738 on 2019/12/9.
//  Copyright © 2019 Ford. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    let emoji = EmojiData()
    @IBOutlet weak var button: WKInterfaceButton!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
        showText()
    }
    
    func showText() {
//        let random = arc4random()%100 + 1
//        let random2 = arc4random()%100 + 1
//        button.setTitle("点击改变\(random)\n\(random2)")

        let peopleIndex = emoji.people.count.random()
        let natureIndex = emoji.nature.count.random()
        let objectsIndex = emoji.objects.count.random()
        let placesIndex = emoji.places.count.random()
        let symbolsIndex = emoji.symbols.count.random()
    button.setTitle("\(emoji.people[peopleIndex])\(emoji.nature[natureIndex])\(emoji.objects[objectsIndex])\(emoji.places[placesIndex])\(emoji.symbols[symbolsIndex])")
    }
    
    @IBAction func newShow() {
        showText()
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
