//
//  Coin.swift
//  CoinFlip
//
//  Created by Max Miranda on 9/6/18.
//  Copyright © 2018 ___MaxAMiranda___. All rights reserved.
//

import Foundation

class Coin {
    var probability : Double!
    
    init(_ prob: Double) {
        probability = prob
    }
    
    func getRandomFace() -> String {
        let randomInt = arc4random_uniform(1)
        if (randomInt > UInt32(probability)) {
            return "Heads"
        } else {
            return "Tails"
        }
    }
    
    static func getRandomFaceStatic() -> String {
        let randomInt = arc4random_uniform(1)
        if (randomInt > UInt32(0.5)) {
            return "Heads"
        } else {
            return "Tails"
        }
    }
}
