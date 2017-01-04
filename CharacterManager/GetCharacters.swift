//
//  GetCharacters.swift
//  CharacterManager
//
//  Created by Amy Roberson on 1/3/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import Foundation

class GetCharacters {
    let hermione = PlayerCharacter(name: "Hermione Granger", experience: 20, classification: .student, isEvil: false, boggart: "Failure", patronus: "Otter", wandWood: "Vine Wood")
    let minerva = PlayerCharacter(name: "Minerva McGonagall", experience: 50, classification: .orderOfThePhoenix, isEvil: false, boggart: "Voldemort", patronus: "Cat", wandWood: "Fir")
    let lucius = PlayerCharacter(name: "Lucius Malfoy", experience: 30, classification: .deathEater, isEvil: true, boggart: "Voldemort", patronus: "none", wandWood: "Elm")
    var characters: [PlayerCharacter]
    
    init(){
        characters = [hermione, minerva, lucius]
    }
    
    init?(json: Data) {
        do{
            guard let jsonObject = try JSONSerialization.jsonObject(with: json, options: []) as? [[String: Any]] else {
                return nil
            }
            self.characters = []
            for dictionary in jsonObject{
                if let tmpCharacter = PlayerCharacter(dictionary: dictionary) {
                    self.characters.append(tmpCharacter)
                }
            }
        } catch {
            return nil
        }
    }
    
    func toJSON() throws -> Data {
        var dictionaries: [[String:Any]] = []
        for character in characters{
            dictionaries.append(character.toDictionary())
        }
        let jsonRepresentation = try JSONSerialization.data(withJSONObject: dictionaries, options: [])
        return jsonRepresentation
    }

}
