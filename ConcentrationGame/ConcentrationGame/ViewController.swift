//
//  ViewController.swift
//  ConcentrationGame
//
//  Created by Michael Gonzalez on 3/7/18.
//  Copyright © 2018 App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Cards flipped: \(flipCount)"
        }
    }
    
    @IBOutlet var flipCountLabel: UILabel!
    
    @IBOutlet var buttons: [UIButton]!
    var emojiChoices = ["🎃", "👻", "🎃", "👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = buttons.index(of: sender)
        {
            //Notice there isn't an exclamation point
            //since the conditional statement takes
            //care of this
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            print("cardNumber \(cardNumber)")
        }
        else
        {
            print("You need to connect the button to the buttons outlet collection")
        }
        
//        flipCard(withEmoji: "👻", on: sender)
    }
    
    func flipCard(withEmoji emoji:String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    




}

