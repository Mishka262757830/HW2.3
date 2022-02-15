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
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tapBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tapBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcomeMessage = user.greating
            } else if let aboutMeVC = viewController as? AboutMeViewController {
                aboutMeVC.user = user
            } else if let myDreamVC = viewController as? DreamViewController {
                myDreamVC.myDreamMessage = user.person.myDream
            }
        }
        
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

