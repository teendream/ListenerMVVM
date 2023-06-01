//
//  ViewController.swift
//  LoginForm
//
//  Created by Azizbek Abdulkhakimov on 02/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = LoginVM()
    
    @IBOutlet weak var statusLbl: UILabel!
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBAction func loginBtnTapped(_ sender: Any) {
        viewModel.userButtonPressed(login: loginTF.text ?? "", password: passwordTF.text ?? "")
    }
    
    func initialState(){
        statusLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        statusLbl.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }
    
    func bindViewModel(){
        viewModel.statusText.bind { statusText in
            DispatchQueue.main.async {
                self.statusLbl.text = statusText
            }
        }
        
        viewModel.statusColor.bind { statusColor in
            DispatchQueue.main.async {
                self.statusLbl.textColor = statusColor
            }
        }
    }


}

