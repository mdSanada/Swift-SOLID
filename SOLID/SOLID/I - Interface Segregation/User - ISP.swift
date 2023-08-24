//
//  User - ISP.swift
//  SOLID
//
//  Created by Matheus Sanada on 24/08/23.
//

import Foundation
// INTERFACE SEGREGATION PRINCIPLE (ISP)
/// Ignoring another principles, just to demonstrate Single Responsability Princle

public protocol AllUser {
    func viewContent()
}

public protocol LoggedUser: AllUser {
    func postComment()
    func logout()
}

public protocol PremiumUser: LoggedUser {
    func editComment()
}

public protocol UnloggedUser: AllUser {
    func login(username: String, password: String)
}

public class ManagerUsers {
    public init() {
        
    }
    
    public func seePost(_ user: AllUser) {
        user.viewContent()
    }
    
    public func post(_ user: LoggedUser) {
        user.postComment()
    }
    
    public func login(_ user: UnloggedUser) {
        user.login(username: "", password: "")
    }
    
    public func logout(_ user: LoggedUser) {
        user.logout()
    }
}

public class RegisteredUser: LoggedUser {
    
    public init() {
        
    }
    
    public func viewContent() {
        print("Viewing content as a logged-in user")
    }
    
    public func postComment() {
        print("Posting a comment as a logged-in user")
    }
    
    public func logout() {
        print("Logging out as a logged-in user")
    }
}

public class SuperUser: LoggedUser {
    
    public init() {
        
    }

    public func viewContent() {
        print("Viewing content as a premium user")
    }
    
    public func postComment() {
        print("Posting a comment as a premium user")
    }
    
    public func logout() {
        print("Logging out as a premium user")
    }
}

public class GuestUser: UnloggedUser {
    
    public init() {
        
    }
    
    public func viewContent() {
        print("Viewing content as a guest user")
    }
    
    public func login(username: String, password: String) {
        print("Logging in as a guest user with username: \(username)")
    }
}
