//
//  MargaritaCalulator.swift
//  MararitaParty2
//
//  Created by Jonathan Compton on 7/27/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//

import Foundation

class MargaritaCalculator {
    
    static func getRecipe(numberOfGuests guests: Int, numberOfMargs margs: Int) -> Recipe {
        let tequila = 2 * guests * margs
        let orangeLiqueur = guests * margs
        let limeJuice = guests * margs
        
        let thisRecipe = Recipe(tequila: tequila, orangeLiqueur: orangeLiqueur, limeJuice: limeJuice)
        
        return thisRecipe
    }
}
