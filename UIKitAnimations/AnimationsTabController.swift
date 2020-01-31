//
//  AnimationsTabController.swift
//  UIKitAnimations
//
//  Created by Maitree Bain on 1/31/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    private lazy var sampleAnimationsVC: SampleAnimationsController = {
        let viewController = SampleAnimationsController()
        viewController.tabBarItem = UITabBarItem(title: "Sample Animations", image: UIImage(systemName: "1.circle"), tag: 0)
        return viewController
    }()
    
    private lazy var constraintsAnimationsVC: ConstraintsAnimationsController = {
        //1: get instance from storyboard
        let constraintsAnimationStoryboard = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        
        //2: instantiate view controller from storyboard instance
        guard let viewController = constraintsAnimationStoryboard.instantiateViewController(identifier: "ConstraintsAnimationsController") as? ConstraintsAnimationsController else {
            fatalError("could not load ConstraintsAnimationsController")
        }
        viewController.tabBarItem = UITabBarItem(title: "Constraints Animations", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set View Controllers for the tab bar
        // in our app we will have two tabs
        
        viewControllers = [sampleAnimationsVC, constraintsAnimationsVC]
    }
    
    
}
