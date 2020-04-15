//
//  ViewController.swift
//  SportsFinder
//
//  Created by Liiban Mukhtar on 14/04/2020.
//  Copyright © 2020 Liiban Mukhtar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var signInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.layer.cornerRadius = 40;
        signInButton.clipsToBounds = true;

        signUpButton.layer.cornerRadius = 40;
        signUpButton.clipsToBounds = true;
        // Do any additional setup after loading the view.
    }


    @IBAction func signInButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToLogin", sender: self)
    }
    
}

