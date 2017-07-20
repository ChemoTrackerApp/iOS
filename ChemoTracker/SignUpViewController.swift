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
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if(textField.textColor == UIColor.red){
            textField.text = nil
            textField.textColor = UIColor.black
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    @IBAction func signUpAction(_ sender: AnyObject) {
        let email = self.emailField.text
        let _firstpart = "[A-Z0-9a-z]([A-Z0-9a-z._%+-]{0,30}[A-Z0-9a-z])?"
        let _serverpart = "([A-Z0-9a-z]([A-Z0-9a-z-]{0,30}[A-Z0-9a-z])?\\.){1,5}"
        let _emailRegex = _firstpart + "@" + _serverpart + "[A-Za-z]{2,6}"
        let _emailPredicate = NSPredicate(format: "SELF MATCHES %@", _emailRegex)
        if(self.nameField.text == nil){
            self.nameField.text = "Please fill in your name!"
            self.nameField.textColor = UIColor.red
        }
        if(_emailPredicate.evaluate(with: email) != true){
            self.emailField.text = "Email address not valid!"
            self.emailField.textColor = UIColor.red
        }
        else{
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let tabViewController = storyBoard.instantiateViewController(withIdentifier: "tabView")as! TabBarViewController
            self.present(tabViewController, animated:true, completion:nil)
        }

    }
    
}

