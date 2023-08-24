//
//  ViewController.swift
//  SOLID Example
//
//  Created by Matheus Sanada on 23/08/23.
//

import UIKit
import SOLID

class ViewController: UIViewController {
    let user = User(username: "name",
                    password: "password",
                    cellphone: "cellphone",
                    email: "email")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        runAll()
    }
    
    func runAll() {
        workSRP()
        workORPAuthenticator()
        workORPNotification()
        workLSPAlert()
        workLSPPolygon()
        workISPUser()
        workDIP()
    }

    func workSRP() {
        let manager = FileManager(reader: FileReader(),
                                  writter: FileWritter())
        
        manager.write(message: "Single Responsability Principle")
        
        print(self.description, manager.read())
    }
    
    func workORPAuthenticator() {
        let password = PasswordAuthentication()
        let authenticatorPassword = Authenticator(method: password)
        authenticatorPassword.authenticate(user: user)
        
        let biometry = BiometricAuthentication()
        let authenticatorBiometry = Authenticator(method: biometry)
        authenticatorBiometry.authenticate(user: user)
    }
    
    func workORPNotification() {
        let sms = SMSNotification()
        
        let email = EmailNotification()
        
        let notifier = Notifier()
        
        notifier.notify(using: sms, user: user, message: "SMS")
        
        notifier.notify(using: email, user: user, message: "EMAIL")
    }
    
    func workLSPAlert() {
        let alert = Alert()
        
        let alertType = BaseAlertHandler(title: "title", message: "message")
        let alertFancy = FancyAlertHandler(title: "title", message: "message")
        let alertEmergency = EmergencyAlertHandler(title: "title", message: "message")
        
        alert.show(alert: alertFancy, in: self)
    }
    
    func workLSPPolygon() {
        let manager = PolygonManager()
        let rectagle = Rectangle(witdh: 10, height: 20)
        let square = Square(side: 10)
        
        manager.print(polygon: rectagle)
        manager.print(polygon: square)
    }
    
    func workISPUser() {
        let manager = ManagerUsers()
        
        let guest = GuestUser()
        let logged = RegisteredUser()
        let premium = SuperUser()
        
        manager.seePost(guest)
        manager.seePost(logged)
        manager.seePost(premium)
        
        manager.post(logged)
        manager.post(premium)
    }
    
    func workDIP() {
        let credit = CreditProcessor()
        let storeCredit = OnlineStore(paymentService: credit)
        storeCredit.checkout()
        
        let debit = DebitProcessor()
        let storeDebit = OnlineStore(paymentService: debit)
        storeDebit.checkout()
    }
}

