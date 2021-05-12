//
//  Logger.swift
//  QuickHatch
//
//  Created by Daniel Koster on 9/18/17.
//  Copyright © 2019 DaVinci Labs. All rights reserved.
//

import Foundation

public protocol Logger {
    func verbose(_ msg: String)
    func debug(_ msg: String)
    func warning(_ msg: String)
    func error(_ msg: String)
    func info(_ msg: String)
    func severe(_ msg: String)
}


