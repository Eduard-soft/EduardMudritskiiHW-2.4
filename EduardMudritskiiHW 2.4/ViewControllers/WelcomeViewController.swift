//
//  WelcomeViewController.swift
//  EduardMudritskiiHW 2.4
//
//  Created by Эдуард on 29.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(student1.name) \(student1.secondName)"
    }
    
    @IBAction func goToMember() {
//        let newVS = storyboard?.instantiateViewController(withIdentifier: "MemberViewController")
//        navigationController?.pushViewController(newVS!, animated: true)
        
    }
    
}
