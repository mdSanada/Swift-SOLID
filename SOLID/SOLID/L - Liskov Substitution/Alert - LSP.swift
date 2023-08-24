//
//  Alert - LSP.swift
//  SOLID
//
//  Created by Matheus Sanada on 23/08/23.
//

import UIKit
// LISKOV SUBSTITUTION PRINCIPLE (LSP)
/// Ignoring another principles, just to demonstrate Single Responsability Princle

public protocol AlertContructor {
    var title: String { get }
    var message: String { get }
}

public protocol AlertHandler {
    func showAlert(in viewController: UIViewController)
}

public class Alert {
    
    public init() {
    }

    public func show(alert: AlertHandler, in viewController: UIViewController) {
        alert.showAlert(in: viewController)
    }
}

public class BaseAlertHandler: AlertHandler, AlertContructor {
    public var title: String
    public var message: String
    
    public init(title: String, message: String) {
        self.title = title
        self.message = message
    }
    
    public func showAlert(in viewController: UIViewController) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        viewController.present(alertController,
                               animated: true,
                               completion: nil)
    }
}

public class FancyAlertHandler: AlertHandler, AlertContructor {
    public var title: String
    public var message: String
    
    public init(title: String, message: String) {
        self.title = title
        self.message = message
    }

    public func showAlert(in viewController: UIViewController) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Dismiss",
                                                style: .cancel,
                                                handler: nil))
        
        alertController.view.tintColor = .systemPurple
        
        viewController.present(alertController,
                               animated: true,
                               completion: nil)
    }
}

public class EmergencyAlertHandler: AlertHandler, AlertContructor {
    public var title: String
    public var message: String
    
    public init(title: String, message: String) {
        self.title = title
        self.message = message
    }

    public func showAlert(in viewController: UIViewController) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Emergency",
                                                style: .destructive,
                                                handler: nil))
        
        viewController.present(alertController,
                               animated: true,
                               completion: nil)
    }
}
