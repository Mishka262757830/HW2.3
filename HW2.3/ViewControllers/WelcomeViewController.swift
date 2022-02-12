//
//  WelcomeViewController.swift
//  HW2.3
//
//  Created by Mikhail Stepanov on 03.02.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeMessage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeMessage
    }
    

}
