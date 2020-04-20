//
//  IntroViewController.swift
//  SportsFinder
//
//  Created by Liiban Mukhtar on 14/04/2020.
//  Copyright © 2020 Liiban Mukhtar. All rights reserved.
//

// Collapse: comman + option + shift + <-
// Indent code: control + i

import UIKit

class IntroViewController: UIViewController {
	
	// MARK: - Views
	

    @IBOutlet weak var registerButton: UIButton!{

        didSet{
             registerButton.backgroundColor = UIColor.clear
             registerButton.layer.cornerRadius = registerButton.frame.height / 2
            registerButton.clipsToBounds = true
            registerButton.layer.borderWidth = 2.0
            registerButton.layer.borderColor = UIColor(red: 8.0/255, green: 98/255, blue: 65/255, alpha: 1.0).cgColor
            registerButton.setTitle("Register", for: .normal)
            registerButton.setTitleColor(.white, for: .normal)
        }
    }

    @IBOutlet weak var signInButton: UIButton!{
        didSet{
            signInButton.setTitle("Register", for: .normal)

            signInButton.setTitleColor(.white, for: .normal)


        }
    }
    
	// MARK: - Properties
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do main stuff
	}
	
	// MARK: - Actions
	
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToRegister", sender: self)
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
         self.performSegue(withIdentifier: "goToLogin", sender: self)
    }
    
}
