//
//  TutorialFirstPageViewController.swift
//  weatherApp
//
//  Created by jjudy on 2022/11/16.
//

import UIKit

class TutorialFirstPageViewController: UIViewController {

    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        descriptionLabel.numberOfLines = 2
    }


}
