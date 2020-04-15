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
	
	@IBOutlet weak var usernameTextField: UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	
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
		}
		
	}
	
}

class ViewModel {
	
	// MARK: - Lifecycle
	
	init() {}
	
	// MARK: - ublic Methods
	
	func validateUser(email: String, password: String) -> Bool {
		if ((email == "email@gmail.com") && (password == "password")) {
			return true
		}
		
		return false
	}
	
}
