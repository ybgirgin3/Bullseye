//
//  Game.swift
//  Bullseye
//
//  Created by Yusuf Berkay Girgin on 22.05.2022.
//

import Foundation
// 18. dersten devam et

struct Game {
  var target: Int = Int.random(in: 1..<100)
  var score: Int = 0
  var round: Int = 1
  
  func points(sliderValue: Int) -> Int {
    let difference: Int
    if sliderValue > self.target {
      difference = sliderValue - self.target
    } else if self.target > sliderValue {
      difference = self.target - sliderValue
    } else  {
      difference = 0
    }
    let awardPoints: Int = 100 - difference
    return awardPoints
  }
 
}
