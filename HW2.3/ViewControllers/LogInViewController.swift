//
//  ViewController.swift
//  HW2.3
//
//  Created by Mikhail Stepanov on 03.02.2022.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
//    private let login = "user"
//    private let password = "password"
    
    private let user = User.getUser()
    private let person = Person.getPerson()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        
        welcomeVC.welcomeMessage = "Привет, уважаемый гость!"
        
        if loginTF.text != user.login || passwordTF.text != user.password {
            showAlert(title: "Sorry!", message: "Wrong login or password!")
            passwordTF.text = ""
        }
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func loginReminderButtonPressed(_ sender: UIButton) {
        showAlert(title: "Your login is:", message: user.login)
    }
    
    @IBAction func passwordReminderButtonPressed(_ sender: UIButton) {
        showAlert(title: "Your password is:", message: user.password)
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(
            UIAlertAction(title: "OK", style: .default)
        )
        present(alert, animated: true)
    }
}

