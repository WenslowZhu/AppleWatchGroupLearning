//
//  InterfaceController.swift
//  HelloAppleWatch WatchKit Extension
//
//  Created by wang gaohui on 2019/12/9.
//  Copyright © 2019 ford. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var button: WKInterfaceButton!
    let emoji = EmojiData()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        showFortune()
    }
    
    @IBAction func newFortune() {
        showFortune()
    }
    
    private func showFortune() {
        let people = emoji.people.randomElement()
        let nature = emoji.nature.randomElement()
        let objects = emoji.objects.randomElement()
        let places = emoji.places.randomElement()
        let symbols = emoji.symbols.randomElement()
        
        if let people = people,
            let nature = nature,
            let objects = objects,
            let places = places,
            let symbols = symbols {
            button.setTitle(people + nature + objects + places + symbols)
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
