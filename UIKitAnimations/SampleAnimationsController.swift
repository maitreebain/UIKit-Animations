//
//  SampleAnimationsController.swift
//  UIKitAnimations
//
//  Created by Maitree Bain on 1/31/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class SampleAnimationsController: UIViewController {
    
    let sampleAnimationsView = SampleAnimationView()
    
    override func loadView() {
        view = sampleAnimationsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //        pulsatingAnimation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        scaleAnimation()
    }
    
    private func scaleAnimation() {
        /*
         - Properties we could animate :
         * Alpha
         * Corner radius
         * Position
         * Center
         * Transition
         * BcgColor
         * Shadow
         * Opacity
         * Transform: scale, rotate, translate
         */
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
            self.sampleAnimationsView.pursuitLogo.alpha = 0.0
        },
     completion: { (done) in
        //gets called after animation is done
        UIView.animate(withDuration: 0.3) {
            self.sampleAnimationsView.swiftLogo.isHidden = false
            self.sampleAnimationsView.swiftLogo.layer.cornerRadius = self.sampleAnimationsView.swiftLogo.bounds.size.width / 2
        }
    })
}
    
    private func pulsatingAnimation() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.repeat,.autoreverse], animations: {
            //animations block
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (done) in
            //code to be executed after animation is complete
            //options - you can reset view's values
            //options - create another animation
            UIView.animate(withDuration: 0.3) {
                self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform.identity
            }
            
            //NB: if you want to go beyond creating an animation in this completion handler the better choice would be animateKeyFrames()
            
        }
    }
    
    
}
