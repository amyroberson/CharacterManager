//
//  ViewController.swift
//  CharacterManager
//
//  Created by Amy Roberson on 1/3/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import UIKit

public class CharacterViewController: UIViewController {
   public var currentCharacter: PlayerCharacter
   public var characters: [PlayerCharacter]
   public var index: Int
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var currentHealthLabel: UILabel!
    @IBOutlet var maxHealthLabel: UILabel!
    @IBOutlet var currentMagicLabel: UILabel!
    @IBOutlet var maxMagicLabel: UILabel!
    @IBOutlet var classificationLabel: UILabel!
    @IBOutlet var attributesLabel: UILabel!
    @IBOutlet var wandTypeLabel: UILabel!
    @IBOutlet var patronusLabel: UILabel!
    @IBOutlet var boggartLabel: UILabel!
    @IBOutlet var isFightingLabel: UILabel!
    @IBOutlet var isAliveLabel: UILabel!
    @IBOutlet var isEvilLabel: UILabel!

    
    required public init(coder aDecoder: NSCoder) {
        let info = GetCharacters()
        self.characters = info.characters
        index = 0
        currentCharacter = self.characters[index]
        super.init(coder: aDecoder)!
    }
    
    
    
    
    @IBAction func hurt1Tapped() {
        currentCharacter.takeDamage(1)
        refreshView()
    }
    @IBAction func hurt10Tapped() {
        currentCharacter.takeDamage(1)
        refreshView()
    }
    
    @IBAction func heal1Tapped() {
        currentCharacter.heal(1)
        refreshView()
    }
    @IBAction func heal10Tapped() {
        currentCharacter.heal(10)
        refreshView()
    }
   
    @IBAction func preiviousTapped() {
        index -= 1
        if index < 0 {
            index = characters.count - 1
        }
        currentCharacter = characters[index]
        refreshView()
    }
    @IBAction func nextTapped() {
        index += 1
        if index > (characters.count - 1) {
            index = 0
        }
        currentCharacter = characters[index]
        refreshView()
    }
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    func refreshView(){
        nameLabel.text = currentCharacter.name
        currentHealthLabel.text = "Current Health: \(currentCharacter.currentHealth)"
        maxHealthLabel.text = "Max Health: \(currentCharacter.maxHealth)"
        currentMagicLabel.text = "Current Magic: \(currentCharacter.currentMagic)"
        maxMagicLabel.text = "Max Magic: \(currentCharacter.maxMagic)"
        classificationLabel.text = String(describing: currentCharacter.classification)
        attributesLabel.text = "Magical Attributes"
        wandTypeLabel.text = " Wand Wood: \(currentCharacter.wandWood)"
        patronusLabel.text = "Patronus: \(currentCharacter.patronus)"
        boggartLabel.text = "Boggart Form \(currentCharacter.boggart)"
        if currentCharacter.isFighting {
         isFightingLabel.text = "Still Fighting!"
        } else {
            isFightingLabel.text = "No Longer Fighting"
        }
        if currentCharacter.isAlive && currentCharacter.isFighting{
            isAliveLabel.text = "Still Alive!"
        } else if currentCharacter.isAlive {
            isAliveLabel.text = "Still Alive, but needs rest!"
        } else {
            isAliveLabel.text = "Has passed"
        }
        if currentCharacter.isEvil {
            isEvilLabel.text = "Evil!"
        } else if !currentCharacter.isEvil && currentCharacter.classification == .deathEater{
            isEvilLabel.text = "Not all who act evil are..."
        } else {
            isEvilLabel.text = "Fighting for Good!"
        }
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        refreshView()
    }
    
    

}

