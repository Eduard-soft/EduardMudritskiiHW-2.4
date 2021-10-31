//
//  StudyViewController.swift
//  EduardMudritskiiHW 2.4
//
//  Created by Эдуард on 31.10.2021.
//

import UIKit

class StudyViewController: UIViewController {
    
    @IBOutlet weak var studiImage: UIImageView!
    
    @IBOutlet weak var studyLabel: UILabel!
    
    @IBOutlet weak var studyCursesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studiImage.layer.cornerRadius = studiImage.bounds.width / 2
        studiImage.layer.borderColor = UIColor.white.cgColor
        studyLabel.text = student1.skil.text
        studyCursesLabel.text = student1.skil.text
   }
}
