//
//  PartyInfoVC.swift
//  MararitaParty2
//
//  Created by Jonathan Compton on 7/27/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//

import UIKit
import GoogleMobileAds

class PartyInfoVC: UIViewController {
    
    @IBOutlet weak var guestTextField: UITextField!
    @IBOutlet weak var numberOfMargsTextField: UITextField!

    var recipe: Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(doneTapped))
        
        toolbar.setItems([flexibleSpace, doneButton], animated: false)
        
        guestTextField.inputAccessoryView = toolbar
        numberOfMargsTextField.inputAccessoryView = toolbar
        
        let ac = UIAlertController(title: "Are You at least 21 Years Old?", message: "You must be 21 years of age to use the information provided from this app.  If you're of age, please drink responsibly.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        ac.addAction(okAction)
        self.present(ac, animated: true, completion: nil)
    }
    
    @objc func doneTapped() {
        guestTextField.resignFirstResponder()
        numberOfMargsTextField.resignFirstResponder()
    }

    @IBAction func goTapped(_ sender: Any) {
        guard guestTextField.text != nil, guestTextField.text != "", numberOfMargsTextField.text != nil, numberOfMargsTextField.text != "", let numberOfGuests = Int(guestTextField.text!), let numberOfMargs = Int(numberOfMargsTextField.text!) else {return}
        
        recipe = MargaritaCalculator.getRecipe(numberOfGuests: numberOfGuests, numberOfMargs: numberOfMargs)
        numberOfMargsTextField.text = ""
        guestTextField.text = ""
        performSegue(withIdentifier: "toRecipeVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toRecipeVC" {
            let destinationVC = segue.destination as! RecipeVC
            destinationVC.recipe = recipe
        }
    }
    
}

