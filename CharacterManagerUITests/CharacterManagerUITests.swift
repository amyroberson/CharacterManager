//
//  CharacterManagerUITests.swift
//  CharacterManagerUITests
//
//  Created by Amy Roberson on 1/3/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import XCTest
import CharacterManager

class CharacterManagerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        XCUIApplication().launch()

    }
    
    override func tearDown() {
                super.tearDown()
    }
    
    
    /*func testHurt1() {
        let health = CharacterViewController.currentCharacter.currentHealth
        XCUIApplication().buttons["Hurt 1 Point"].tap()
        XCTAssertEqual(health, health - 1)
    }
    
    func testHurt10(){
        let health = CharacterViewController.currentCharacter.currentHealth
        XCUIApplication().buttons["Hurt 10 Points"].tap()
        XCTAssertEqual(health, health - 10)
    }*/
    
}
