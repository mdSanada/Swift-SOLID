//
//  User.swift
//  SOLID
//
//  Created by Matheus Sanada on 23/08/23.
//

import Foundation

public struct User {
    let username: String
    let password: String
    let cellphone: String
    let email: String
    
    public init(username: String,
                password: String,
                cellphone: String,
                email: String) {
        self.username = username
        self.password = password
        self.cellphone = cellphone
        self.email = email
    }
}
