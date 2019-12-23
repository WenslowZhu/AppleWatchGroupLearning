//
//  ViewController.swift
//  HelloAppleWatch
//
//  Created by tstone10 on 2019/12/23.
//  Copyright © 2019 Afra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var fortuneLabel: UILabel!
    
    let emoji = EmojiData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "👋🍎⌚️‼"
        showFortune()
    }

    func showFortune() {
      let people = emoji.people[emoji.people.count.random()]
      let nature = emoji.nature[emoji.nature.count.random()]
      let objects = emoji.objects[emoji.objects.count.random()]
      let places = emoji.places[emoji.places.count.random()]
      let symbols = emoji.symbols[emoji.symbols.count.random()]
      fortuneLabel.text = people + nature + objects + places + symbols
    }

    @IBAction func newFortune(_ sender: Any) {
        showFortune()
    }
}

