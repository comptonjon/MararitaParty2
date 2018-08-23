//
//  RecipeVC.swift
//  MararitaParty2
//
//  Created by Jonathan Compton on 7/27/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//

import UIKit
import GoogleMobileAds

class RecipeVC: UIViewController {
   
    @IBOutlet weak var recipeLabel: UILabel!
    
    var recipe: Recipe!

    override func viewDidLoad() {

        recipeLabel.text = "\(recipe.tequila) OZ TEQUILA \n\(recipe.orangeLiqueur) OZ ORANGE LIQUEUR \n\(recipe.limeJuice) OZ FRESH LIME JUICE"
        
    }



}
