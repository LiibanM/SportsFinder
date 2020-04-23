//
//  RegisterViewController.swift
//  SportsFinder
//
//  Created by Liiban Mukhtar on 20/04/2020.
//  Copyright © 2020 Liiban Mukhtar. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var registrationTitle: UILabel!
    
    
    @IBOutlet weak var emailAddressField: UITextField!{
        didSet{
            emailAddressField.attributedPlaceholder =
                NSAttributedString(string: "email Address", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        }
    }
    
    
    @IBOutlet weak var userNameField: UITextField!{
        didSet{
            userNameField.attributedPlaceholder =
                NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        }
    }
    
    
    @IBOutlet weak var passWordField: UITextField!{
        didSet{
            passWordField.attributedPlaceholder =
                NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        }
    }
    
    @IBOutlet weak var confirmPasswordField: UITextField!{
        didSet{
            confirmPasswordField.attributedPlaceholder =
                NSAttributedString(string: "Confirm Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        }
    }
    
    
    @IBOutlet weak var dateOfBirthField: UITextField!{
        didSet{
            dateOfBirthField.attributedPlaceholder =
                NSAttributedString(string: "Date of Birth", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        }
    }
    
    
    @IBOutlet weak var completeButton: UIButton!{
        didSet{
          completeButton.backgroundColor = UIColor.clear
              completeButton.layer.cornerRadius = completeButton.frame.height / 2
             completeButton.clipsToBounds = true
             completeButton.layer.borderWidth = 2.0
             completeButton.layer.borderColor = UIColor(red: 8.0/255, green: 98/255, blue: 65/255, alpha: 1.0).cgColor
             completeButton.setTitle("Login", for: .normal)
             completeButton.setTitleColor(.white, for: .normal)
        }
    }
    let datepicker = UIDatePicker()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
          createDatePick()
        // Do any additional setup after loading the view.
    }
    
    func createDatePick(){
    //tool bar added to the datepicker for done button
    
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //donebutton
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        
        toolbar.setItems([doneButton], animated: true)
        
        //assign toolbar to button
        dateOfBirthField.inputAccessoryView = toolbar
        //assign the date to the dob field
        dateOfBirthField.inputView = datepicker
         
        //setting the date mode
        datepicker.datePickerMode = .date
    }
    //when Done button is pressed
    @objc func donePressed(){
        
        //format the string
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        dateOfBirthField.text = formatter.string(from: datepicker.date)
        
        self.view.endEditing(true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
