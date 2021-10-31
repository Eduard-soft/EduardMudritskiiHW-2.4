//
//  MemberViewController.swift
//  EduardMudritskiiHW 2.4
//
//  Created by Эдуард on 31.10.2021.
//

import UIKit

class MemberViewController: UIViewController {
    

    @IBOutlet weak var memberImage: UIImageView!
    
    @IBOutlet weak var memberNameLabel: UILabel!
    
    @IBOutlet weak var memberSecondName: UILabel!
    
    @IBOutlet weak var memberEmailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        memberImage.layer.cornerRadius = memberImage.bounds.height / 2
        memberImage.layer.borderWidth = 6
        memberImage.layer.borderColor = UIColor.white.cgColor
        
        memberNameLabel.text = student1.name
        memberSecondName.text = student1.secondName
        memberEmailLabel.text = student1.email
    }
    

   

}
