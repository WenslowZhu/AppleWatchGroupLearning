//
//  InterfaceController.swift
//  HelloWordWatch WatchKit Extension
//
//  Created by l.b.cheng on 2019/12/9.
//  Copyright © 2019 l.b.cheng. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    lazy var emoji: EmojiData = EmojiData()

    @IBOutlet weak var button: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        showFortune()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    private func showFortune() {
        let people = emoji.people[emoji.people.count.random()]
        let nature = emoji.nature[emoji.nature.count.random()]
        let objects = emoji.objects[emoji.objects.count.random()]
        let places = emoji.places[emoji.places.count.random()]
        let symbols = emoji.symbols[emoji.symbols.count.random()]
        button.setTitle(people + nature + objects + places + symbols)
    }
    
    @IBAction func clickButtonAction() {
        showFortune()
    }
}
