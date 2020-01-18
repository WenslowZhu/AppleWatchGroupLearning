//
//  ColorController.swift
//  ColorPicker WatchKit Extension
//
//  Created by 朱廷 on 2020/1/18.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import WatchKit

class ColorController: WKInterfaceController {

    @IBOutlet var label: WKInterfaceLabel!
    @IBOutlet var backgroundGroup: WKInterfaceGroup!
    
    var activeColor = UIColor.white
    
    func update(color: UIColor) {
        activeColor = color
        backgroundGroup.setBackgroundColor(color)
        label.setText("#" + color.hexString)
    }
    
    override func awake(withContext context: Any?) {   super.awake(withContext: context)
        if let color = context as? UIColor {
            update(color: color)
        }
    }
    
    func updateSelectedColor() {
        ColorManager.defaultManager.selectedColor = activeColor
    }
    
    override func didAppear() {
        super.didAppear()
        updateSelectedColor()
    }
    
    @IBAction func onDarken() {
        update(color: activeColor.darkerColor())
        updateSelectedColor()
    }
    
    @IBAction func onLighten() {   update(color:
        activeColor.lighterColor())
        updateSelectedColor() }
}
