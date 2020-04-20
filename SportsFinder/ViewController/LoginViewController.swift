//
//  LoginViewController.swift
//  SportsFinder
//
//  Created by Liiban Mukhtar on 15/04/2020.
//  Copyright © 2020 Liiban Mukhtar. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Views
    
    @IBOutlet weak var incorrectLoginMessage: UILabel!{
        didSet{
            incorrectLoginMessage.isHidden = true // hide
            
        }
    }
    
    @IBOutlet weak var usernameTextField: UITextField!{
        didSet{
            usernameTextField.backgroundColor = UIColor.clear
             usernameTextField.layer.cornerRadius = usernameTextField.frame.height / 2
            usernameTextField.clipsToBounds = true
            usernameTextField.layer.borderWidth = 2.0
            usernameTextField.layer.borderColor = UIColor(red: 8.0/255, green: 98/255, blue: 65/255, alpha: 1.0).cgColor
           usernameTextField.attributedPlaceholder =
            NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])

            
//            usernameTextField.setTitle("Register", for: .normal)
//            usernameTextField.setTitleColor(.white, for: .normal)
           
        }
    }
    @IBOutlet weak var passwordTextField: UITextField!{
        didSet{
            passwordTextField.backgroundColor = UIColor.clear
             passwordTextField.layer.cornerRadius = passwordTextField.frame.height / 2
            passwordTextField.clipsToBounds = true
            passwordTextField.layer.borderWidth = 2.0
            passwordTextField.layer.borderColor = UIColor(red: 8.0/255, green: 98/255, blue: 65/255, alpha: 1.0).cgColor
            passwordTextField.attributedPlaceholder =
                       NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
            
        }
    }
    
    
    @IBOutlet weak var loginButton: UIButton!{
        
        didSet{
            loginButton.backgroundColor = UIColor.clear
             loginButton.layer.cornerRadius = loginButton.frame.height / 2
            loginButton.clipsToBounds = true
            loginButton.layer.borderWidth = 2.0
            loginButton.layer.borderColor = UIColor(red: 8.0/255, green: 98/255, blue: 65/255, alpha: 1.0).cgColor
            loginButton.setTitle("Login", for: .normal)
            loginButton.setTitleColor(.white, for: .normal)
            
        }
    }
    
    
    @IBOutlet weak var resetPasswordButton: UIButton!{
        
        didSet{
            resetPasswordButton.setTitle("Forgot your password?", for: .normal)
        }
    }
    
    // MARK: - Properties
    
    let viewModel = ViewModel() // Logic
    
    // MARK: -  Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Actions
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        guard let stringUsername = usernameTextField.text, let stringPassword = passwordTextField.text else {
            return
        }
        
        // Check email & pwd
        let isValidated = viewModel.validateUser(email: stringUsername, password: stringPassword)
        
        if (isValidated) {
            // If ok ~> dismiss page and show Home Page (HomeViewController)
        } else {
            // if not ~> Show alert (Show a label with property .isHidden)
            incorrectLoginMessage.isHidden = false // hide
            
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
            
        }
        
        
    }
    
    
    @objc func updateUI(){
        incorrectLoginMessage.isHidden = true // hide
        usernameTextField.text = nil
        passwordTextField.text = nil
        
    }
    
    
}

class ViewModel {
    
    // MARK: - Lifecycle
    
    init() {}
    let tempUsername = "abc"
    let tempPassword = "123"
    
    // MARK: - ublic Methods
    
    func validateUser(email: String, password: String) -> Bool {
        if ((email == tempUsername) && (password == tempPassword)) {
            return true
        }
        
        return false
    }
    
}
