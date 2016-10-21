//
//  ViewController.swift
//  LaunchScreenDemo
//
//  Created by wangyuanyuan on 02/10/2016.
//  Copyright © 2016 wangyuanyuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        LaunchScreenAnimation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func LaunchScreenAnimation() {
        let launchViewController = UIStoryboard(name: "LaunchScreen", bundle: nil).instantiateViewController(withIdentifier: "launchScreenStoryboardID")
        if let launchView = launchViewController.view {
            self.view.addSubview(launchView)
            
            UIView.animate(withDuration: 1, delay: 0.5, options: [.curveLinear], animations: {
                
                launchView.alpha = 0
                launchView.transform = launchView.transform.scaledBy(x: 0.1, y: 0.1)
                launchView.transform = launchView.transform.rotated(by: CGFloat(M_PI))
                
            }) { (finished) in
                launchView.removeFromSuperview()
            }
            
        } else {
            print("Cannot get launch screen.")
        }
    }
    
}

