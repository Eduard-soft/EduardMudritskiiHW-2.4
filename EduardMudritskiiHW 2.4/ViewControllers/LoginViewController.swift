//
//  LoginViewController.swift
//  EduardMudritskiiHW 2.4
//
//  Created by Эдуард on 29.10.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let user = student1.login
    private let password =
    student1.password
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTextField.delegate = self
        passwordTextField.delegate = self
    }
//    // MARK: - Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.user = user
//    }

    @IBAction func logInButton() {
        if loginTextField.text != user || passwordTextField.text != password {
//        performSegue(withIdentifier: "welcomeVC", sender: nil)
//        } else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: passwordTextField)
        }
    }
    
    @IBAction func reminderLogin() {
        showAlert(title: "Oops!", message: "Your name is \(user) 🙁")
    }
    
    @IBAction func reminderPassword() {
        showAlert(title: "Oops!", message: "Your password is \(password) 🙁")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         if textField == loginTextField {
             passwordTextField.becomeFirstResponder()
        } else {
            logInButton()
            performSegue(withIdentifier: "welcomeVC", sender: nil)
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let welcomeViewController = segue.destination as? WelcomeViewController else { return }
        welcomeViewController.user = loginTextField.text ?? ""
    }
}
