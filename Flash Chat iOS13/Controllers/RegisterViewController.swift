//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    var errorText : String = ""
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.errorText = e.localizedDescription
                    self.performSegue(withIdentifier: K.popupSegue, sender: self)
                } else {
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
                
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == K.popupSegue {
            let destinationVC = segue.destination as! PopUpViewController
            destinationVC.displayText = errorText
        }
    }
    
}
