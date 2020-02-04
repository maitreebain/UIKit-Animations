//
//  TransitionAnimationsController.swift
//  UIKitAnimations
//
//  Created by Maitree Bain on 2/4/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class TransitionAnimationsController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(animate))
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set default image
        imageView.image = UIImage(named: "dog")
        imageView.backgroundColor = .systemTeal
        
        //enable user interaction on the image view or a label as those two UI elements are set to false by default
        imageView.isUserInteractionEnabled = true
        
        //add gesture to the image view
        imageView.addGestureRecognizer(tapGesture)
    }
    
    @objc private func animate() {
        let duration: Double = 1.5
        let curveOption: UIView.AnimationOptions = .curveEaseInOut
        
        if imageView.image == UIImage(named: "dog") {
            UIView.transition(with: imageView, duration: duration, options: [.transitionCrossDissolve, curveOption], animations: {
                self.imageView.image = UIImage(named: "cat")
                self.imageView.backgroundColor = .magenta
            }, completion: nil)
        } else {
            UIView.transition(with: imageView, duration: duration, options: [.transitionCrossDissolve, curveOption], animations: {
                self.imageView.image = UIImage(named: "dog")
                self.imageView.backgroundColor = .systemTeal
            }, completion: nil)
        }
    }
    
    
}
