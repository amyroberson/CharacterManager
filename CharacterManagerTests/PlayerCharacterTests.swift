//
//  PlayerCharacterTests.swift
//  CharacterManager
//
//  Created by Amy Roberson on 1/3/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import XCTest
import CharacterManager

class PlayerCharacterTests: XCTestCase {
    
    func testInit(){
        let hermione = PlayerCharacter(name: "Hermione Granger", experience: 20, classification: .student, isEvil: false, boggart: "Failure", patronus: "Otter", wandWood: "VineWood")
        XCTAssertEqual(hermione.level, 6)
        XCTAssertEqual(hermione.maxMagic, 112)
        XCTAssertEqual(hermione.maxHealth, 112)
    }
    
    func testINIT1(){
        let hermione = PlayerCharacter(name: "Hermione Granger", experience: 0, classification: .student, isEvil: false, boggart: "Failure", patronus: "Otter", wandWood: "VineWood")
        XCTAssertEqual(hermione.level, 1)
        XCTAssertEqual(hermione.maxMagic, 102)
        XCTAssertEqual(hermione.maxHealth, 102)
    }
    
    func testINIT2(){
        let notHermione = PlayerCharacter(name: "Hermione Granger", experience: 0, classification: .deathEater, isEvil: true, boggart: "Failure", patronus: "none", wandWood: "VineWood")
        XCTAssertEqual(notHermione.level, 1)
        XCTAssertEqual(notHermione.maxMagic, 122)
        XCTAssertEqual(notHermione.maxHealth, 107)
    }
    
    func testINIT3(){
    let minerva = PlayerCharacter(name: "Minerva McGonagall", experience: 50, classification: .orderOfThePhoenix, isEvil: false, boggart: "Voldemort", patronus: "Cat", wandWood: "Fir")
    XCTAssertEqual(minerva.level, 13)
    XCTAssertEqual(minerva.maxMagic, 159)
    XCTAssertEqual(minerva.maxHealth, 159)
    }
    
    func testDamageHeal(){
        let hermione = PlayerCharacter(name: "Hermione Granger", experience: 20, classification: .student, isEvil: false, boggart: "Failure", patronus: "Otter", wandWood: "VineWood")
        hermione.takeDamage(10)
        XCTAssertEqual(hermione.currentHealth, 90)
        hermione.heal(10)
        XCTAssertEqual(hermione.currentHealth, 100)
    }
    
    
    func testDamageHeal1(){
        let hermione = PlayerCharacter(name: "Hermione Granger", experience: 20, classification: .student, isEvil: false, boggart: "Failure", patronus: "Otter", wandWood: "VineWood")
        hermione.takeDamage(110)
        XCTAssertEqual(hermione.currentHealth, 0)
        hermione.heal(hermione.maxHealth)
        XCTAssertEqual(hermione.currentHealth, 112)
    }
}
