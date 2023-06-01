//
//  LoginVM.swift
//  LoginForm
//
//  Created by Azizbek Abdulkhakimov on 02/06/23.
//

import Foundation
import UIKit.UIColor

class LoginVM{
     
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    func userButtonPressed(login: String, password: String){
        if login != User.login[0].login || password != User.login[0].password {
            statusText.value =  "Login is failed"
            statusColor.value = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        }else{
            statusText.value = "You successfully logged in"
            statusColor.value = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
    }
    
}
