//
//  TutorialThirdPageViewController.swift
//  weatherApp
//
//  Created by jjudy on 2022/11/16.
//

import UIKit

class TutorialThirdPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Third Page ViewController Did Appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("Third Page ViewController Did DisAppear")
    }
}
