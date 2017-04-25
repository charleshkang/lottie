//
//  ViewController.swift
//  LottieDemo
//
//  Created by Charles Kang on 4/25/17.
//  Copyright © 2017 Charles Kang. All rights reserved.
//

import UIKit

import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lottieAnimation()
    }
    
    func lottieAnimation() {
        if let animationView = LOTAnimationView(contentsOf: URL(string: "https://github.com/airbnb/lottie-ios/raw/master/Example/Assets/PinJump.json")!) {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            animationView.contentMode = .scaleAspectFill
            animationView.loopAnimation = true
            
            // Applying UIView animation
            let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            animationView.transform = minimizeTransform
            UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
                animationView.transform = CGAffineTransform.identity
            }, completion: nil)
            
            view.addSubview(animationView)
            animationView.play()
        }
    }
    
}

