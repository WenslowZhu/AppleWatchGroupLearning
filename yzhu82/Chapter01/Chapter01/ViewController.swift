//
//  ViewController.swift
//  Chapter01
//
//  Created by yubin on 2019/12/8.
//  Copyright © 2019 yubin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emojiFortuneLabel: UILabel!
    let emoji = EmojiData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showFortune()
    }
    
    func showFortune() {
        let people = emoji.people[emoji.people.count.random()]
        let nature = emoji.nature[emoji.nature.count.random()]
        let objects = emoji.objects[emoji.objects.count.random()]
        let places = emoji.places[emoji.places.count.random()]
        let symbols = emoji.symbols[emoji.symbols.count.random()]
        emojiFortuneLabel.text = people + nature + objects + places + symbols
    }
    
    @IBAction func newFortune(_ sender: Any) {
        showFortune()
    }
}

