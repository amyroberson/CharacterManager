//
//  ViewController.swift
//  CharacterManager
//
//  Created by Amy Roberson on 1/3/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {
    let hermione = PlayerCharacter(name: "Hermione Granger", experience: 20, classification: .student, isEvil: false, boggart: "Failure", patronus: "Otter", wandWood: "VineWood")
    let minerva = PlayerCharacter(name: "Minerva McGonagall", experience: 50, classification: .orderOfThePhoenix, isEvil: false, boggart: "Voldemort", patronus: "Cat", wandWood: "Fir")
    let lucius = PlayerCharacter(name: "Lucius Malfoy", experience: 30, classification: .deathEater, isEvil: true, boggart: "Voldemort", patronus: "none", wandWood: "Elm")
    var currentCharacter: PlayerCharacter
    let characters: [PlayerCharacter]
    
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
    @IBOutlet var isEvilLabel: UILabel!
    
    required init(coder aDecoder: NSCoder) {
        characters = [hermione, minerva, lucius]
        currentCharacter = characters[0]
        super.init(coder: aDecoder)!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func refreshView(){
    }
    
    


}

