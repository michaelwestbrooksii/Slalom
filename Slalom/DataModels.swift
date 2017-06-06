//
//  DataRetrieval.swift
//  Slalom
//
//  Created by Michael Westbrooks II on 5/26/17.
//  Copyright © 2017 RedRooster Technologies Inc. All rights reserved.
//

import UIKit

class mainObj {
    var name: String
    var length: Int
    init(name: String) {
        self.name = name
        self.length = name.trimmingCharacters(in: .whitespacesAndNewlines).characters.count
    }
}
