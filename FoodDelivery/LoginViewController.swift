//
//  ViewController.swift
//  FoodDelivery
//
//  Created by Иван on 5/17/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var phoneNumberTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10

    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Wrong username or password", message: "Enter valid data", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel) { (_) in
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    @IBAction func loginButtonPressed() {
        
        if phoneNumberTF.text == UserData.getUserData().name && passwordTF.text == UserData.getUserData().password {
            performSegue(withIdentifier: "login", sender: nil)
        } else {
            showAlert()
            self.phoneNumberTF.text = ""
            self.passwordTF.text = ""
        }
    }
    


}

extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == phoneNumberTF {
            textField.resignFirstResponder()
            passwordTF.becomeFirstResponder()
        } else {
            loginButtonPressed()
        }
        return true
    }
}

