//
//  AboutMeViewController.swift
//  HW2.3
//
//  Created by Mikhail Stepanov on 12.02.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var aboutMeLabel: UILabel!
    
    var aboutMeMessage: String!
    var user = User.getUser()

    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMeMessage = """
        "Меня зовут \(user.person.name) \(user.person.surname).
        Мне \(user.person.age)
        """
        
        aboutMeLabel.text = aboutMeMessage
    }

}
