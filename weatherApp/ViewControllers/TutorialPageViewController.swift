//
//  TutorialPageViewController.swift
//  weatherApp
//
//  Created by jjudy on 2022/11/16.
//

import UIKit
class TutorialPageViewController: UIPageViewController {
    
    var completeHandler : ((Int)->())?
    
    lazy var vcArray: [UIViewController] = {
        print("created vcArray")
        return [self.vcInstance(vcName: "TutorialFirstVC"),
                self.vcInstance(vcName: "TutorialSecondVC"),
                self.vcInstance(vcName: "TutorialThirdVC")]
    }()
    
    // 스토리보드 아이디에 맞는 뷰 컨트롤러 인스턴스를 반환
    private func vcInstance(vcName : String) ->UIViewController{
            return UIStoryboard(name : "Main", bundle : nil).instantiateViewController(withIdentifier: vcName)
            
        }
    
    var currentIndex : Int {
            guard let vc = viewControllers?.first else { return 0 }
            return vcArray.firstIndex(of: vc) ?? 0
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 딜리게이트, 데이터소스 연결
        self.dataSource = self
        self.delegate = self
        
        // 첫 번째 페이지를 기본 페이지로 설정
        if let firstVC = vcArray.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    }
    
}

extension TutorialPageViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        // 배열에서 현재 페이지의 컨트롤러를 찾아서 해당 인덱스를 현재 인덱스로 기록
        guard let vcIndex = vcArray.firstIndex(of: viewController) else { return nil }
        // 이전 페이지 인덱스
        let prevIndex = vcIndex - 1
        
        // 인덱스가 0 이상이라면 그냥 놔둠
        guard prevIndex >= 0 else {
            return nil
        }
        
        // 인덱스는 vcArray.count 이상이 될 수 없음
        guard vcArray.count > prevIndex else { return nil }
        
        return vcArray[prevIndex]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = vcArray.firstIndex(of: viewController) else { return nil }
        
        // 다음 페이지 인덱스
        let nextIndex = vcIndex + 1
        
        guard nextIndex < vcArray.count else {
            return nil
        }
        
        guard vcArray.count > nextIndex else { return nil }
        
        return vcArray[nextIndex]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
           if completed {
               completeHandler?(currentIndex)
               print(currentIndex)
           }
       }
}

