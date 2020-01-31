//
//  ConstraintsAnimationsController.swift
//  UIKitAnimations
//
//  Created by Maitree Bain on 1/31/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class ConstraintsAnimationsController: UIViewController {
    
    @IBOutlet weak var box: UIView!
    
    @IBOutlet weak var viewYConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
    }
    
    
    @IBAction func animateViewUp(_ sender: UIButton) {
        // negative value to move up
        
        //constraint view upward movement to the top of device, where y = 0
        
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.0, options: [], animations: {
            sender.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (done) in
            sender.transform = CGAffineTransform.identity
        }
        print(box.frame.origin.y)
        if box.frame.origin.y < 100 { return }
        // TODO: Determind if view.frame.origin.y == 0 {return }
        
        viewYConstraint.constant -= 100
        // when we change the constraints in iOS and we need this change to be animated we only need to animate we only need to animate self.view.layoutIfNeeded and the animation will take place
        
        //layoutIfNeeded will get called as the view is marked "dirty" by iOS, we implementing self.view.layoutIfNeeded in the animation block will cause the animation
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 8.0, options: [.curveEaseIn], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    
    @IBAction func animateViewDown(_ sender: UIButton) {
        //positive value to move down
        viewYConstraint.constant += 100
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 8.0, options: [.curveEaseInOut], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
}
