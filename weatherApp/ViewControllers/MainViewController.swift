//
//  ViewController.swift
//  weatherApp
//
//  Created by jjudy on 2022/11/16.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "launchedBefore") == false {
            
            // 하고 싶은 작업 진행
            let vcName = self.storyboard?.instantiateViewController(withIdentifier: "TutorialVC")
            vcName?.modalPresentationStyle = .fullScreen
            self.present(vcName!, animated: true, completion: nil)
            
            print("first Load")
            
            UserDefaults.standard.set(true, forKey: "launchedBefore")
        }
    }
}

