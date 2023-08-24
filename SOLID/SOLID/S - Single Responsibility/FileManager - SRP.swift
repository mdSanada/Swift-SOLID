//
//  SRP.swift
//  SOLID
//
//  Created by Matheus Sanada on 23/08/23.
//

import Foundation
// SINGLE REPONSIBILITY PRINCIPLE (SRP)
/// Ignoring another principles, just to demonstrate Single Responsability Princle

public class FileManager {
    let reader: FileReader
    let writter: FileWritter
    
    public init(reader: FileReader, writter: FileWritter) {
        self.reader = reader
        self.writter = writter
    }
    
    public func read() -> String? {
        return reader.read()
    }
    
    public func write(message: String) -> Bool {
        do {
            let result = try writter.write(message: message)
            return result
        } catch {
            return false
        }
    }
}

public class FileReader {
    
    public init() {
        
    }
    
    func read() -> String? {
        UserDefaults.standard.string(forKey: "SRP")
    }
}

public class FileWritter {
    
    public init() {
        
    }

    func write(message: String) throws -> Bool {
        UserDefaults().set(message, forKey: "SRP")
        return true // save success
    }
}
