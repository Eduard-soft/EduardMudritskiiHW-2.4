//
//  ProjectViewController.swift
//  EduardMudritskiiHW 2.4
//
//  Created by Эдуард on 31.10.2021.
//

import UIKit

class ProjectViewController: UIViewController {

    @IBOutlet weak var logoProjectImage: UIImageView!
    @IBOutlet weak var projectLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        logoProjectImage.layer.cornerRadius = 20
        
        projectLabel.text = project.text

      
    }
    



}
