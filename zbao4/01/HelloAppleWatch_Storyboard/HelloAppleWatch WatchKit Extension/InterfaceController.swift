//
//  InterfaceController.swift
//  HelloAppleWatch WatchKit Extension
//
//  Created by 鲍志轶 on 2019/12/19.
//  Copyright © 2019 鲍志轶. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var button: WKInterfaceButton!
    
    let emoji = EmojiData()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    fileprivate func showFortune() {
        let people = emoji.people[emoji.people.count.random()]
        let nature = emoji.nature[emoji.nature.count.random()]
        let objects = emoji.objects[emoji.objects.count.random()]
        let places = emoji.places[emoji.places.count.random()]
        let symbols = emoji.symbols[emoji.symbols.count.random()]
        button.setTitle(people + nature + objects + places + symbols)
    }
    
    @IBAction func newFortune() {
        showFortune()
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        showFortune()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
