//
//  ViewController.swift
//  AppleWatchLearningDemo
//
//  Created by zhongqi.yu on 2019/12/8.
//  Copyright © 2019 zhongqi.yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emojiHelloLabel: UILabel!
    @IBOutlet weak var emojiFortuneLabel: UILabel!
    let emoji = EmojiData()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tapShowFortuneButton(_ sender: UIButton) {
        showFortune()
    }
    
    fileprivate func showFortune() {
        // 1
        let people = emoji.people[emoji.people.count.random()]
        let nature = emoji.nature[emoji.nature.count.random()]
        let objects = emoji.objects[emoji.objects.count.random()]
        let places = emoji.places[emoji.places.count.random()]
        let symbols = emoji.symbols[emoji.symbols.count.random()]
        // 2
        emojiFortuneLabel.text = people + nature + objects + places + symbols
    }
    
    
}

