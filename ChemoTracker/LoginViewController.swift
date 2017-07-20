//
//  ViewController.swift
//  ChemoTracker
//
//  Created by Oluwaseun Makinde on 2017-05-30.
//  Copyright © 2017 Innovare. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate{

    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailField.delegate = self
        self.passwordField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.emailField.resignFirstResponder()
        self.passwordField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if(textField.text == "Email address not valid!"){
            textField.text = nil
            textField.textColor = UIColor.black
        }
//        self.emailField.text = nil
//        self.emailField.textColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginAction(_ sender: AnyObject) {
        let email = self.emailField.text
        let _firstpart = "[A-Z0-9a-z]([A-Z0-9a-z._%+-]{0,30}[A-Z0-9a-z])?"
        let _serverpart = "([A-Z0-9a-z]([A-Z0-9a-z-]{0,30}[A-Z0-9a-z])?\\.){1,5}"
        let _emailRegex = _firstpart + "@" + _serverpart + "[A-Za-z]{2,6}"
        let _emailPredicate = NSPredicate(format: "SELF MATCHES %@", _emailRegex)
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

