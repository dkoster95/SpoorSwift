//
//  InMemoryLogger.swift
//  SpoorSwift
//
//  Created by Daniel Koster on 5/11/21.
//

import Foundation

public class InMemoryLogger: Logger {
    private let shortcutId: String
    
    public init(_ shortcutId: String) {
        self.shortcutId = shortcutId
    }
    
    public func severe(_ msg: String) {
        #if DEBUG
        NSLog("\(shortcutId) Log: \(thread) đ SEVERE -- \(msg)")
        #endif
    }
    
    public func warning(_ msg: String) {
        #if DEBUG
        NSLog("\(shortcutId) Log: \(thread) â ī¸ WARNING -- \(msg)")
        #endif
    }
    
    public func verbose(_ msg: String) {
        #if DEBUG
        NSLog("\(shortcutId) Log: \(thread) VERBOSE -- \(msg)")
        #endif
    }
    
    public func debug(_ msg: String) {
        #if DEBUG
        NSLog("\(shortcutId) Log: \(thread) â DEBUG -- \(msg)")
        #endif
    }

    public func error(_ msg: String) {
        #if DEBUG
            NSLog("\(shortcutId) Log: \(thread) â ERROR -- \(msg)")
        #endif
    }
    
    public func info(_ msg: String) {
        #if DEBUG
            NSLog("\(shortcutId) Log: \(thread) âšī¸ INFO -- \(msg)")
        #endif
    }
    
    private var thread: String {
        var thread = "Thread:"
        if Thread.current.isMainThread {
            thread += "main:"
        } else {
            thread += "background:"
        }
        thread += "priority:\(Thread.current.threadPriority)"
        return thread
    }
}
