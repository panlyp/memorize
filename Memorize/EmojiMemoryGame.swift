//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by user on 23/6/2020.
//  Copyright © 2020 Panpan. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        
        // set all emojis
        var allEmojis = [String]()
        for i in 0x1F601...0x1F64F {
            if let emoji = UnicodeScalar(i) {
                allEmojis.append(String(emoji))
            }
        }
        
        // set a random number as the number of pairs of cards
        var emojis = [String]()
        let numOfPair = Int.random(in: 2...5)
        for _ in 0..<numOfPair {
            emojis.append(allEmojis.randomElement()!)
        }
        
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Intent
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Access to the model
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
