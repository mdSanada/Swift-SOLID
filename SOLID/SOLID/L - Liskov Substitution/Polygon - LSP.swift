//
//  Polygon - LSP.swift
//  SOLID
//
//  Created by Matheus Sanada on 24/08/23.
//

import Foundation
// LISKOV SUBSTITUTION PRINCIPLE (LSP)
/// Ignoring another principles, just to demonstrate Single Responsability Princle

public protocol Polygon {
    func calculateArea() -> Float
}

public class PolygonManager {
    public init() {
        
    }
    
    public func print(polygon: Polygon) {
        Swift.print("Polygon area", polygon.calculateArea())
    }
}

public class Rectangle: Polygon {
    let witdh: Float
    let height: Float

    public init(witdh: Float, height: Float) {
        self.witdh = witdh
        self.height = height
    }

    public func calculateArea() -> Float {
        return witdh * height
    }
}

public class Square: Polygon {
    let side: Float

    public init(side: Float) {
        self.side = side
    }

    public func calculateArea() -> Float {
        return pow(side,2)
    }
}
