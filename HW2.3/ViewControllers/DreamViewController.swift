//
//  DreamViewController.swift
//  HW2.3
//
//  Created by Mikhail Stepanov on 12.02.2022.
//

import UIKit

class DreamViewController: UIViewController {

    @IBOutlet var myDreamLabel: UILabel!
    
    
    var myDreamMessage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myDreamLabel.text = myDreamMessage
    }
    
    @IBAction func test() {
        dismiss(animated: true)
    }
}
