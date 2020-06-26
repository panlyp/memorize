//
//  Array+Only.swift
//  Memorize
//
//  Created by user on 24/6/2020.
//  Copyright © 2020 Panpan. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
