//
//  DetailController.swift
//  ColorPicker WatchKit Extension
//
//  Created by 朱廷 on 2020/1/18.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import WatchKit
import Foundation


class DetailController: WKInterfaceController {

    @IBOutlet var hexLabel: WKInterfaceLabel!
    @IBOutlet var rgbLabel: WKInterfaceLabel!
    @IBOutlet var hslLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        super.willActivate()
        let color = ColorManager.defaultManager.selectedColor
        hexLabel.setText("#" + color.hexString)
        rgbLabel.setText(color.rgbString)
        hslLabel.setText(color.hslString)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
