//
//  RecipeDetailController.swift
//  Recipes WatchKit Extension
//
//  Created by 朱廷 on 2020/1/11.
//  Copyright © 2020 Ray Wenderlich. All rights reserved.
//

import WatchKit

class RecipeDetailController: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        if let recipe = context as? Recipe {
            let rowTypes: [String] = ["RecipeHeader"] + recipe.steps.map({ _ in "RecipeStep" })
            table.setRowTypes(rowTypes)
            for i in 0..<table.numberOfRows {
                let row = table.rowController(at: i)
                if let header = row as? RecipeHeaderController {
                    header.titleLabel.setText(recipe.name)
                } else if let step = row as? RecipeStepController {       step.stepLabel.setText("\(i). " + recipe.steps[i - 1])
                }
            }
        }
    }
}
