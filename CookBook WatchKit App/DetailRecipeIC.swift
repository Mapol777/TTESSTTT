//
//  DetailRecipeIC.swift
//  CookBook WatchKit Extension
//
//  Created by Student on 23.03.2022.
//

import WatchKit

class DetailRecipeIC: WKInterfaceController {
    
    @IBOutlet weak var iconRecipe: WKInterfaceLabel!
    @IBOutlet weak var nameRecipe: WKInterfaceLabel!
    @IBOutlet weak var imageRecipe: WKInterfaceImage!
    @IBOutlet weak var authorRecipe: WKInterfaceLabel!
    @IBOutlet weak var textRecipe: WKInterfaceLabel!
    @IBOutlet weak var ratingRecipe: WKInterfaceSlider!

    var recipe: Recipes!
    
    @IBAction func changeRating(_ value: Float) {
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let item = context as? Recipes {
            self.recipe = item
            iconRecipe.setText(item.recipeIcon)
            nameRecipe.setText(item.recipeName)
            imageRecipe.setImageNamed(item.recipeImage)
            authorRecipe.setText(item.recipeAuthor)
            textRecipe.setText(item.recipeText)
            ratingRecipe.setValue(Float(item.recipeRating))
        }
    }
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        return recipe.recipeText
    }
}
