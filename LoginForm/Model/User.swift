//
//  LoginModel.swift
//  LoginForm
//
//  Created by Azizbek Abdulkhakimov on 02/06/23.
//

import Foundation

struct User{
    let login: String?
    let password: String?
}

extension User{
    static var login = [
        User(login: "aziz", password: "12345")
    ]
}
