//
//  Notification - ORP.swift
//  SOLID
//
//  Created by Matheus Sanada on 23/08/23.
//

// OPEN/CLOSED REPONSIBILITY PRINCIPLE (ORP)
/// Ignoring another principles, just to demonstrate Single Responsability Princle
/// Using Parameters

import Foundation

public protocol NotificationMethod {
    func notify(user: User, message: String)
}

public class EmailNotification: NotificationMethod {
    
    public init() {
        
    }
    
    public func notify(user: User, message: String) {
        // Code to send email notification
        print("Sending Email notification", user.email)
    }
}

public class SMSNotification: NotificationMethod {
    
    public init() {
        
    }
    
    public func notify(user: User, message: String) {
        // Code to send SMS notification
        print("Sending SMS notification", user.cellphone)
    }
}

public class Notifier {
    
    public init() {
        
    }
    
    public func notify(using method: NotificationMethod, user: User, message: String) {
        method.notify(user: user, message: message)
    }
}
