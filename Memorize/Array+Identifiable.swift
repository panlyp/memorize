//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by user on 24/6/2020.
//  Copyright © 2020 Panpan. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if matching.id == self[index].id {
                return index
            }
        }
        return nil
    }
    
}
