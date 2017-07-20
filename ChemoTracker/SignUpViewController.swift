//
//  SignUpViewController.swift
//  ChemoTracker
//
//  Created by Oluwaseun Makinde on 2017-07-20.
//  Copyright © 2017 Innovare. All rights reserved.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameField.delegate = self
        self.emailField.delegate = self
        self.passwordField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.nameField.resignFirstResponder()
        self.emailField.resignFirstResponder()
        self.passwordField.resignFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    @IBAction func signUpAction(_ sender: AnyObject) {
        //        var finalEmail = email.stringByTrimmi
    }
    
}

