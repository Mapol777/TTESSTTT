//
//  RecipeDescriptionIC.swift
//  CookBook WatchKit Extension
//
//  Created by Student on 30.03.2022.
//

import WatchKit

class RecipeDescriptionIC: WKInterfaceController {
    
    @IBOutlet weak var fullRecipeLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?){
        super.awake(withContext: context)
        
        if let context = context as? String {
            fullRecipeLabel.setText(context)
        }
        
    }

}
