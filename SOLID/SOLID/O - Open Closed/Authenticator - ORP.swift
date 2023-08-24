//
//  ORP.swift
//  SOLID
//
//  Created by Matheus Sanada on 23/08/23.
//

import Foundation
// OPEN/CLOSED REPONSIBILITY PRINCIPLE (ORP)
/// Ignoring another principles, just to demonstrate Single Responsability Princle
/// Using Depency Injection

public protocol AuthenticationMethod {
    func authenticate(user: User) -> Bool
}

public class PasswordAuthentication: AuthenticationMethod {
    
    public init() {
        
    }
    
    public func authenticate(user: User) -> Bool {
        // Code to authenticate using password
        return true
    }
}

public class BiometricAuthentication: AuthenticationMethod {
    
    public init() {
        
    }
    
    public func authenticate(user: User) -> Bool {
        // Code to authenticate using biometric
        return true
    }
}

public class Authenticator {
    let method: AuthenticationMethod
    
    public init(method: AuthenticationMethod) {
        self.method = method
    }
    
    public func authenticate(user: User) -> Bool {
        return method.authenticate(user: user)
    }
}
