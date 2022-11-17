//
//  TutorialViewController.swift
//  weatherApp
//
//  Created by jjudy on 2022/11/16.
//

import UIKit

class TutorialViewController: UIViewController {
    
    @IBOutlet weak var pageController: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SelectPageController(_ sender: UIPageControl) {
        
    }
    //TODO: 페이지 바뀔 때 PageController도 변형되고, PageController 선택하면 페이지도 바뀔 수 있도록d
}
