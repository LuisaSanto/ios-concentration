//
//  Card.swift
//  Concentration
//
//  Created by Luisa Santo on 2/13/19.
//  Copyright © 2019 Luisa Santo. All rights reserved.
//

import Foundation

struct Card: Hashable {
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    var hashValue: Int {return identifier}
    static func ==(hls: Card, rhs: Card) -> Bool {
        // now we dont need to compare the identifier
        // that is something in card
        return hls.identifier == rhs.identifier
    }
    
    private static var identifierFactory = 0
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
}
