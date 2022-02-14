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

    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMeLabel.text = aboutMeMessage
    }

}
