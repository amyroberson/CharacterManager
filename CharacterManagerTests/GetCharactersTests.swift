//
//  CharacterViewControllerTests.swift
//  CharacterManager
//
//  Created by Amy Roberson on 1/3/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import XCTest
@testable import CharacterManager

class GetCharactersTests: XCTestCase {
  
    func testToFromJson(){
        let tmp = GetCharacters()
        do{
            let data = try tmp.toJSON()
            let newCharacters = GetCharacters(json: data)
            let characters: [PlayerCharacter] = (newCharacters?.characters)!
            let hermione = characters[0]
            let minerva = characters[1]
            let lucius = characters[2]
            XCTAssertEqual(hermione.name, "Hermione Granger")
            XCTAssertEqual(minerva.name, "Minerva McGonagall")
            XCTAssertEqual(lucius.name, "Lucius Malfoy")
            XCTAssertEqual(lucius.isEvil, true)
            XCTAssertEqual(minerva.wandWood, "Fir")
            XCTAssertEqual(lucius.patronus, "none")
            
        } catch{
            XCTAssert(false)
        }
    }
    
}
