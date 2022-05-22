//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Yusuf Berkay Girgin on 12.05.2022.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
  var game: Game!

    override func setUpWithError() throws {
      game = Game()
    }

    override func tearDownWithError() throws {
      game = nil
    }

//    func testExample() throws {
//      XCTAssertEqual(game.points(sliderValue: 50), 999)
//    }
  
  func testScorePositive() {
    let guess = game.target + 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
                   
  func testScoreNegative() {
    let guess = game.target - 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }

}
