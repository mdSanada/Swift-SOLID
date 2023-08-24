//
//  Payment Processor - DIP.swift
//  SOLID
//
//  Created by Matheus Sanada on 24/08/23.
//

import Foundation
// DEPENDENCY INVERSION PRINCIPLE (DIP)
/// Ignoring another principles, just to demonstrate Single Responsability Princle

public protocol PaymentService {
    func processPayment()
}

public class CreditProcessor: PaymentService {
    public init() {
        
    }
    
    public func processPayment() {
        print("Paying with Credit")
    }
}

public class DebitProcessor: PaymentService {
    public init() {
        
    }
    
    public func processPayment() {
        print("Paying with Debit")
    }
}

public class OnlineStore {
    private let paymentService: PaymentService
    
    public init(paymentService: PaymentService) {
        self.paymentService = paymentService
    }
    
    public func checkout() {
        paymentService.processPayment()
    }
}
