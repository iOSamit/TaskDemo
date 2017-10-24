//
//  TDExtension.swift
//  TaskDemo
//
//  Created by Amit on 24/10/2015 SAKA.
//  Copyright © 2017 Dream World. All rights reserved.
//

import Foundation
extension String {
    var length: Int {
        return characters.count
    }
    func trim() -> String
    {
        return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }

}
