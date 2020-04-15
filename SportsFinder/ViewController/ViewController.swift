//
//  ViewController.swift
//  SportsFinder
//
//  Created by Liiban Mukhtar on 14/04/2020.
//  Copyright © 2020 Liiban Mukhtar. All rights reserved.
//

// Collapse: comman + option + shift + <-
// Indent code: control + i

import UIKit

class ViewController: UIViewController {
	
	// MARK: - Views
	
	@IBOutlet weak var cardView: UIView! {
		didSet {
			cardView.layer.cornerRadius = 22.0
		}
	}
	@IBOutlet weak var signUpButton: UIButton! {
		didSet {
			signUpButton.backgroundColor = UIColor.blue
			signUpButton.layer.cornerRadius = 40
			signUpButton.clipsToBounds = true
		}
	}
	@IBOutlet weak var signInButton: UIButton! {
		didSet {
			signInButton.backgroundColor = UIColor.yellow
			signInButton.layer.cornerRadius = 40
			signInButton.clipsToBounds = true
		}
	}
	
	// MARK: - Properties
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do main stuff
	}
	
	// MARK: - Actions
	
	@IBAction func signInButtonPressed(_ sender: UIButton) {
		self.performSegue(withIdentifier: "goToLogin", sender: self)
	}
	
}
